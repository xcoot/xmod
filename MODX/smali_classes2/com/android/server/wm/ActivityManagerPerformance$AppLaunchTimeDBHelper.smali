.class public final Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final dbLock:Ljava/lang/Object;


# instance fields
.field public mBuildVersion:Ljava/lang/String;

.field public mDBDayOfWeek:J

.field public mDevicePowerOnCount:J

.field public mLastModifiedTime:J

.field public mStartTimeGathered:J

.field public final synthetic this$0:Lcom/android/server/wm/ActivityManagerPerformance;


# direct methods
.method public static -$$Nest$mdeleteDBData(Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .line 1
    const-string v0, "AppLaunchTimeCountStats"

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v1, "AppLaunchTime Failed to delete. "

    .line 7
    .line 8
    const-string v2, "AppLaunchTime"

    .line 9
    .line 10
    const-string v3, "NAME=?"

    .line 11
    .line 12
    filled-new-array {v0}, [Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v4, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->dbLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v4

    .line 19
    :try_start_0
    invoke-virtual {p1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-lez p1, :cond_0

    .line 24
    .line 25
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    iput-wide v2, p0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mLastModifiedTime:J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_3

    .line 38
    :catch_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v4

    .line 41
    goto :goto_2

    .line 42
    :goto_1
    const-string p1, "ActivityManagerPerformance"

    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    const/4 p1, -0x1

    .line 65
    :goto_2
    if-gtz p1, :cond_1

    .line 66
    .line 67
    const-string p0, "ActivityManagerPerformance"

    .line 68
    .line 69
    const-string p1, "AppLaunchTime Failed to delete AppLaunchTimeCountStats"

    .line 70
    .line 71
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    :cond_1
    return-void

    .line 75
    :goto_3
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    throw p0
.end method

.method public static -$$Nest$mfetch(Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v1, "AppLaunchTime"

    .line 5
    .line 6
    const-string v0, "NAME"

    .line 7
    .line 8
    const-string v2, "VALUE"

    .line 9
    .line 10
    filled-new-array {v0, v2}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    move-object v0, p1

    .line 20
    :try_start_0
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 21
    .line 22
    .line 23
    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v1, "Failed to query. "

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string v0, "ActivityManagerPerformance:AppLaunchTime"

    .line 45
    .line 46
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    :goto_0
    if-eqz p1, :cond_7

    .line 51
    .line 52
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-lez v0, :cond_7

    .line 57
    .line 58
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_7

    .line 63
    .line 64
    :cond_0
    const/4 v0, 0x0

    .line 65
    :try_start_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const/4 v1, 0x1

    .line 70
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    const-string v2, "AppLaunchTimeCountStats"

    .line 75
    .line 76
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_1

    .line 81
    .line 82
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->fetchAppLaunchTimeCountStatsFromDBValue(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    goto :goto_2

    .line 88
    :cond_1
    const-string v2, "DayOfWeek"

    .line 89
    .line 90
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_2

    .line 95
    .line 96
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 97
    .line 98
    .line 99
    move-result-wide v0

    .line 100
    iput-wide v0, p0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mDBDayOfWeek:J

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    const-string v2, "lastModifiedTime"

    .line 104
    .line 105
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_3

    .line 110
    .line 111
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 112
    .line 113
    .line 114
    move-result-wide v0

    .line 115
    iput-wide v0, p0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mLastModifiedTime:J

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_3
    const-string/jumbo v2, "startTimeOfGatheredData"

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-eqz v2, :cond_4

    .line 126
    .line 127
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 128
    .line 129
    .line 130
    move-result-wide v0

    .line 131
    iput-wide v0, p0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mStartTimeGathered:J

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_4
    const-string v2, "buildVersion"

    .line 135
    .line 136
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-eqz v2, :cond_5

    .line 141
    .line 142
    iput-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mBuildVersion:Ljava/lang/String;

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_5
    const-string v2, "devicePowerOnCount"

    .line 146
    .line 147
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-eqz v0, :cond_6

    .line 152
    .line 153
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 154
    .line 155
    .line 156
    move-result-wide v0

    .line 157
    iput-wide v0, p0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mDevicePowerOnCount:J

    .line 158
    .line 159
    :cond_6
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 160
    .line 161
    .line 162
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    if-nez v0, :cond_0

    .line 164
    .line 165
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 170
    .line 171
    .line 172
    throw p0

    .line 173
    :cond_7
    if-eqz p1, :cond_8

    .line 174
    .line 175
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 176
    .line 177
    .line 178
    :cond_8
    new-instance p0, Landroid/database/sqlite/SQLiteException;

    .line 179
    .line 180
    const-string p1, "failed to fetch"

    .line 181
    .line 182
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw p0
.end method

.method public static -$$Nest$mupdateDataInTable(Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v4, Landroid/content/ContentValues;

    .line 11
    .line 12
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v0, "AppLaunchTimeCountStats"

    .line 16
    .line 17
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_6

    .line 22
    .line 23
    const-string v0, "ActivityManagerPerformance"

    .line 24
    .line 25
    new-instance v6, Lorg/json/JSONObject;

    .line 26
    .line 27
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string/jumbo v7, "warm"

    .line 31
    .line 32
    .line 33
    const-string v8, "hot"

    .line 34
    .line 35
    const-string v9, "cold"

    .line 36
    .line 37
    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    :try_start_0
    iget-object v8, v1, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 42
    .line 43
    iget-object v8, v8, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchTimeCountStats:Ljava/util/Map;

    .line 44
    .line 45
    check-cast v8, Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    if-eqz v9, :cond_4

    .line 60
    .line 61
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    check-cast v9, Ljava/util/Map$Entry;

    .line 66
    .line 67
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    check-cast v10, Ljava/lang/String;

    .line 72
    .line 73
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    check-cast v9, Ljava/util/Map;

    .line 78
    .line 79
    new-instance v11, Lorg/json/JSONObject;

    .line 80
    .line 81
    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v12

    .line 96
    if-eqz v12, :cond_3

    .line 97
    .line 98
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v12

    .line 102
    check-cast v12, Ljava/util/Map$Entry;

    .line 103
    .line 104
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v13

    .line 108
    check-cast v13, Ljava/lang/String;

    .line 109
    .line 110
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v12

    .line 114
    check-cast v12, Ljava/util/Map;

    .line 115
    .line 116
    new-instance v14, Lorg/json/JSONObject;

    .line 117
    .line 118
    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 122
    .line 123
    .line 124
    move-result-object v12

    .line 125
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object v12

    .line 129
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    .line 131
    .line 132
    move-result v15

    .line 133
    if-eqz v15, :cond_2

    .line 134
    .line 135
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v15

    .line 139
    check-cast v15, Ljava/util/Map$Entry;

    .line 140
    .line 141
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v16

    .line 145
    move-object/from16 v5, v16

    .line 146
    .line 147
    check-cast v5, Ljava/lang/String;

    .line 148
    .line 149
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v15

    .line 153
    check-cast v15, [[Ljava/lang/Long;

    .line 154
    .line 155
    move-object/from16 v16, v8

    .line 156
    .line 157
    new-instance v8, Lorg/json/JSONObject;

    .line 158
    .line 159
    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 160
    .line 161
    .line 162
    const/16 v17, 0x0

    .line 163
    .line 164
    move-object/from16 v18, v9

    .line 165
    .line 166
    move/from16 v9, v17

    .line 167
    .line 168
    move-object/from16 v17, v12

    .line 169
    .line 170
    :goto_3
    const/4 v12, 0x3

    .line 171
    if-ge v9, v12, :cond_0

    .line 172
    .line 173
    :try_start_1
    new-instance v12, Lorg/json/JSONArray;

    .line 174
    .line 175
    aget-object v2, v15, v9

    .line 176
    .line 177
    invoke-direct {v12, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    aget-object v2, v7, v9

    .line 181
    .line 182
    invoke-virtual {v8, v2, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    .line 184
    .line 185
    add-int/lit8 v9, v9, 0x1

    .line 186
    .line 187
    move-object/from16 v2, p1

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_0
    invoke-virtual {v14, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v11, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 197
    .line 198
    .line 199
    goto :goto_4

    .line 200
    :catch_0
    :try_start_2
    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 201
    .line 202
    if-eqz v2, :cond_1

    .line 203
    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    .line 209
    const-string/jumbo v5, "the pec stats in \'"

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v5, "\' is not normal"

    .line 219
    .line 220
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 228
    .line 229
    .line 230
    :cond_1
    :goto_4
    move-object/from16 v2, p1

    .line 231
    .line 232
    move-object/from16 v8, v16

    .line 233
    .line 234
    move-object/from16 v12, v17

    .line 235
    .line 236
    move-object/from16 v9, v18

    .line 237
    .line 238
    goto :goto_2

    .line 239
    :cond_2
    move-object/from16 v2, p1

    .line 240
    .line 241
    goto/16 :goto_1

    .line 242
    .line 243
    :cond_3
    move-object/from16 v2, p1

    .line 244
    .line 245
    goto/16 :goto_0

    .line 246
    .line 247
    :catch_1
    const-string v2, "failed to getJsonFromAppLaunchTimeCountStats"

    .line 248
    .line 249
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    :cond_4
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    if-lez v0, :cond_5

    .line 257
    .line 258
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    goto :goto_5

    .line 263
    :cond_5
    const-string v0, ""

    .line 264
    .line 265
    goto :goto_5

    .line 266
    :cond_6
    const-string v0, "DayOfWeek"

    .line 267
    .line 268
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    if-eqz v0, :cond_7

    .line 273
    .line 274
    iget-wide v5, v1, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mDBDayOfWeek:J

    .line 275
    .line 276
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    goto :goto_5

    .line 281
    :cond_7
    const-string v0, "lastModifiedTime"

    .line 282
    .line 283
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    if-eqz v0, :cond_8

    .line 288
    .line 289
    iget-wide v5, v1, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mLastModifiedTime:J

    .line 290
    .line 291
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    goto :goto_5

    .line 296
    :cond_8
    const-string/jumbo v0, "startTimeOfGatheredData"

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    if-eqz v0, :cond_9

    .line 304
    .line 305
    iget-wide v5, v1, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mStartTimeGathered:J

    .line 306
    .line 307
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    goto :goto_5

    .line 312
    :cond_9
    const-string v0, "buildVersion"

    .line 313
    .line 314
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    if-eqz v0, :cond_a

    .line 319
    .line 320
    iget-object v0, v1, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mBuildVersion:Ljava/lang/String;

    .line 321
    .line 322
    goto :goto_5

    .line 323
    :cond_a
    const-string v0, "devicePowerOnCount"

    .line 324
    .line 325
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    if-eqz v0, :cond_b

    .line 330
    .line 331
    iget-wide v5, v1, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mDevicePowerOnCount:J

    .line 332
    .line 333
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    goto :goto_5

    .line 338
    :cond_b
    const/4 v0, 0x0

    .line 339
    :goto_5
    if-nez v0, :cond_c

    .line 340
    .line 341
    goto/16 :goto_d

    .line 342
    .line 343
    :cond_c
    const-string v2, "NAME"

    .line 344
    .line 345
    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    const-string v2, "VALUE"

    .line 349
    .line 350
    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    const-string v2, "AppLaunchTime"

    .line 354
    .line 355
    const-string v0, "NAME=?"

    .line 356
    .line 357
    filled-new-array/range {p2 .. p2}, [Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v5

    .line 361
    const-string v6, "Failed to update. "

    .line 362
    .line 363
    const-string v7, "ActivityManagerPerformance:"

    .line 364
    .line 365
    sget-object v8, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->dbLock:Ljava/lang/Object;

    .line 366
    .line 367
    monitor-enter v8

    .line 368
    move-object/from16 v9, p1

    .line 369
    .line 370
    :try_start_3
    invoke-virtual {v9, v2, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    if-lez v0, :cond_d

    .line 375
    .line 376
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 377
    .line 378
    .line 379
    move-result-object v5

    .line 380
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 381
    .line 382
    .line 383
    move-result-wide v10

    .line 384
    iput-wide v10, v1, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mLastModifiedTime:J
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 385
    .line 386
    goto :goto_6

    .line 387
    :catchall_0
    move-exception v0

    .line 388
    goto/16 :goto_e

    .line 389
    .line 390
    :catch_2
    move-exception v0

    .line 391
    goto :goto_7

    .line 392
    :cond_d
    :goto_6
    :try_start_4
    monitor-exit v8

    .line 393
    goto :goto_8

    .line 394
    :goto_7
    new-instance v5, Ljava/lang/StringBuilder;

    .line 395
    .line 396
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v2

    .line 406
    new-instance v5, Ljava/lang/StringBuilder;

    .line 407
    .line 408
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    .line 424
    .line 425
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 426
    const/4 v0, -0x1

    .line 427
    :goto_8
    if-gtz v0, :cond_f

    .line 428
    .line 429
    const-string v2, "AppLaunchTime"

    .line 430
    .line 431
    const-string v5, "Failed to insert. "

    .line 432
    .line 433
    const-string v6, "ActivityManagerPerformance:"

    .line 434
    .line 435
    sget-object v7, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->dbLock:Ljava/lang/Object;

    .line 436
    .line 437
    monitor-enter v7

    .line 438
    const-wide/16 v10, -0x1

    .line 439
    .line 440
    const/4 v8, 0x0

    .line 441
    :try_start_5
    invoke-virtual {v9, v2, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 442
    .line 443
    .line 444
    move-result-wide v8

    .line 445
    cmp-long v0, v8, v10

    .line 446
    .line 447
    if-eqz v0, :cond_e

    .line 448
    .line 449
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 454
    .line 455
    .line 456
    move-result-wide v12

    .line 457
    iput-wide v12, v1, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mLastModifiedTime:J
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 458
    .line 459
    goto :goto_9

    .line 460
    :catchall_1
    move-exception v0

    .line 461
    goto :goto_c

    .line 462
    :catch_3
    move-exception v0

    .line 463
    goto :goto_a

    .line 464
    :cond_e
    :goto_9
    :try_start_6
    monitor-exit v7

    .line 465
    move-wide v10, v8

    .line 466
    goto :goto_b

    .line 467
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 468
    .line 469
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    new-instance v2, Ljava/lang/StringBuilder;

    .line 480
    .line 481
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    .line 497
    .line 498
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 499
    :goto_b
    const-wide/16 v0, 0x0

    .line 500
    .line 501
    cmp-long v0, v10, v0

    .line 502
    .line 503
    if-gez v0, :cond_f

    .line 504
    .line 505
    const-string v0, "ActivityManagerPerformance"

    .line 506
    .line 507
    const-string v1, "AppLaunchTime Failed to insert "

    .line 508
    .line 509
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v1

    .line 513
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    .line 515
    .line 516
    goto :goto_d

    .line 517
    :goto_c
    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 518
    throw v0

    .line 519
    :cond_f
    :goto_d
    return-void

    .line 520
    :goto_e
    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 521
    throw v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->dbLock:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityManagerPerformance;Landroid/content/Context;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 2
    .line 3
    new-instance v5, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper$AppLaunchTimeDBErrorHandler;

    .line 4
    .line 5
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "/data/misc/AppLaunchTime/app_launch_time.db"

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    move-object v0, p0

    .line 13
    move-object v1, p2

    .line 14
    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    .line 15
    .line 16
    .line 17
    const-wide/16 p1, -0x1

    .line 18
    .line 19
    iput-wide p1, p0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mDBDayOfWeek:J

    .line 20
    .line 21
    iput-wide p1, p0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mLastModifiedTime:J

    .line 22
    .line 23
    iput-wide p1, p0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mStartTimeGathered:J

    .line 24
    .line 25
    iput-wide p1, p0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mDevicePowerOnCount:J

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mBuildVersion:Ljava/lang/String;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final fetchAppLaunchTimeCountStatsFromDBValue(Ljava/lang/String;)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "json parsing error "

    .line 4
    .line 5
    const-string v2, " "

    .line 6
    .line 7
    const-string v3, "ActivityManagerPerformance"

    .line 8
    .line 9
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    move-object/from16 v5, p1

    .line 12
    .line 13
    :try_start_1
    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-object/from16 v5, p1

    .line 18
    .line 19
    :catch_1
    const-string v4, "failed fetch pec from json"

    .line 20
    .line 21
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    :goto_0
    if-eqz v4, :cond_b

    .line 26
    .line 27
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_0

    .line 32
    .line 33
    goto/16 :goto_12

    .line 34
    .line 35
    :cond_0
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-eqz v6, :cond_a

    .line 44
    .line 45
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    check-cast v6, Ljava/lang/String;

    .line 50
    .line 51
    :try_start_2
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    new-instance v8, Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v9
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_10

    .line 64
    const-string v10, ""

    .line 65
    .line 66
    :cond_2
    :goto_2
    :try_start_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v11

    .line 70
    if-eqz v11, :cond_1

    .line 71
    .line 72
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v11

    .line 76
    check-cast v11, Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_10

    .line 77
    .line 78
    :try_start_4
    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    move-result-object v12

    .line 82
    new-instance v13, Ljava/util/HashMap;

    .line 83
    .line 84
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v12}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object v14

    .line 91
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v15
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_e

    .line 95
    if-eqz v15, :cond_2

    .line 96
    .line 97
    :try_start_5
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v15

    .line 101
    check-cast v15, Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_c

    .line 102
    .line 103
    :try_start_6
    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 104
    .line 105
    .line 106
    move-result-object v10
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_b

    .line 107
    move-object/from16 v16, v4

    .line 108
    .line 109
    :try_start_7
    invoke-static {}, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;->values()[Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    array-length v4, v4
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_a

    .line 114
    const/16 v17, 0x1

    .line 115
    .line 116
    add-int/lit8 v4, v4, -0x1

    .line 117
    .line 118
    move-object/from16 p1, v5

    .line 119
    .line 120
    :try_start_8
    invoke-static {}, Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;->values()[Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    array-length v5, v5
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_9

    .line 125
    add-int/lit8 v18, v5, 0x4

    .line 126
    .line 127
    move-object/from16 v19, v7

    .line 128
    .line 129
    const/4 v7, 0x2

    .line 130
    :try_start_9
    new-array v7, v7, [I

    .line 131
    .line 132
    aput v18, v7, v17

    .line 133
    .line 134
    const/16 v17, 0x0

    .line 135
    .line 136
    aput v4, v7, v17
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_8

    .line 137
    .line 138
    move-object/from16 v18, v9

    .line 139
    .line 140
    :try_start_a
    const-class v9, Ljava/lang/Long;

    .line 141
    .line 142
    invoke-static {v9, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    check-cast v7, [[Ljava/lang/Long;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_7

    .line 147
    .line 148
    move/from16 v9, v17

    .line 149
    .line 150
    move/from16 v20, v9

    .line 151
    .line 152
    :goto_4
    if-ge v9, v4, :cond_6

    .line 153
    .line 154
    :try_start_b
    invoke-static {}, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;->values()[Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;

    .line 155
    .line 156
    .line 157
    move-result-object v21

    .line 158
    aget-object v21, v21, v9

    .line 159
    .line 160
    move/from16 v22, v4

    .line 161
    .line 162
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;->getName()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 167
    .line 168
    .line 169
    move-result-object v4
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_3

    .line 170
    move-object/from16 v21, v10

    .line 171
    .line 172
    move-object/from16 v23, v12

    .line 173
    .line 174
    move/from16 v12, v17

    .line 175
    .line 176
    move/from16 v10, v20

    .line 177
    .line 178
    :goto_5
    if-ge v12, v5, :cond_3

    .line 179
    .line 180
    :try_start_c
    aget-object v20, v7, v9

    .line 181
    .line 182
    invoke-virtual {v4, v12}, Lorg/json/JSONArray;->getLong(I)J

    .line 183
    .line 184
    .line 185
    move-result-wide v24

    .line 186
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 187
    .line 188
    .line 189
    move-result-object v24

    .line 190
    aput-object v24, v20, v12
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_2

    .line 191
    .line 192
    move-object/from16 v24, v1

    .line 193
    .line 194
    int-to-long v0, v10

    .line 195
    :try_start_d
    aget-object v10, v7, v9

    .line 196
    .line 197
    aget-object v10, v10, v12

    .line 198
    .line 199
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 200
    .line 201
    .line 202
    move-result-wide v25

    .line 203
    add-long v0, v0, v25

    .line 204
    .line 205
    long-to-int v10, v0

    .line 206
    add-int/lit8 v12, v12, 0x1

    .line 207
    .line 208
    move-object/from16 v0, p0

    .line 209
    .line 210
    move-object/from16 v1, v24

    .line 211
    .line 212
    goto :goto_5

    .line 213
    :catch_2
    move-object/from16 v24, v1

    .line 214
    .line 215
    goto :goto_7

    .line 216
    :cond_3
    move-object/from16 v24, v1

    .line 217
    .line 218
    move/from16 v0, v17

    .line 219
    .line 220
    :goto_6
    const/4 v1, 0x4

    .line 221
    if-ge v0, v1, :cond_4

    .line 222
    .line 223
    aget-object v1, v7, v9

    .line 224
    .line 225
    add-int v12, v5, v0

    .line 226
    .line 227
    invoke-virtual {v4, v12}, Lorg/json/JSONArray;->getLong(I)J

    .line 228
    .line 229
    .line 230
    move-result-wide v25

    .line 231
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 232
    .line 233
    .line 234
    move-result-object v20

    .line 235
    aput-object v20, v1, v12
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_4

    .line 236
    .line 237
    add-int/lit8 v0, v0, 0x1

    .line 238
    .line 239
    goto :goto_6

    .line 240
    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 241
    .line 242
    move-object/from16 v0, p0

    .line 243
    .line 244
    move/from16 v20, v10

    .line 245
    .line 246
    move-object/from16 v10, v21

    .line 247
    .line 248
    move/from16 v4, v22

    .line 249
    .line 250
    move-object/from16 v12, v23

    .line 251
    .line 252
    move-object/from16 v1, v24

    .line 253
    .line 254
    goto :goto_4

    .line 255
    :catch_3
    move-object/from16 v24, v1

    .line 256
    .line 257
    move-object/from16 v23, v12

    .line 258
    .line 259
    :catch_4
    :goto_7
    :try_start_e
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 260
    .line 261
    if-eqz v0, :cond_5

    .line 262
    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .line 267
    .line 268
    const-string v1, "json parsing error stats "

    .line 269
    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    .line 294
    .line 295
    goto :goto_9

    .line 296
    :catch_5
    move-object/from16 v0, p0

    .line 297
    .line 298
    :catch_6
    :goto_8
    move-object v10, v15

    .line 299
    goto :goto_f

    .line 300
    :cond_5
    :goto_9
    move-object/from16 v0, p0

    .line 301
    .line 302
    goto :goto_a

    .line 303
    :cond_6
    move-object/from16 v24, v1

    .line 304
    .line 305
    move-object/from16 v23, v12

    .line 306
    .line 307
    if-lez v20, :cond_5

    .line 308
    .line 309
    invoke-virtual {v13, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v8, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_5

    .line 313
    .line 314
    .line 315
    move-object/from16 v0, p0

    .line 316
    .line 317
    :try_start_f
    iget-object v1, v0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 318
    .line 319
    iget-object v1, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchTimeCountStats:Ljava/util/Map;

    .line 320
    .line 321
    invoke-interface {v1, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_6

    .line 322
    .line 323
    .line 324
    :goto_a
    move-object/from16 v5, p1

    .line 325
    .line 326
    move-object v10, v15

    .line 327
    move-object/from16 v4, v16

    .line 328
    .line 329
    move-object/from16 v9, v18

    .line 330
    .line 331
    move-object/from16 v7, v19

    .line 332
    .line 333
    move-object/from16 v12, v23

    .line 334
    .line 335
    move-object/from16 v1, v24

    .line 336
    .line 337
    goto/16 :goto_3

    .line 338
    .line 339
    :catch_7
    move-object/from16 v24, v1

    .line 340
    .line 341
    :goto_b
    move-object/from16 v23, v12

    .line 342
    .line 343
    goto :goto_8

    .line 344
    :catch_8
    move-object/from16 v24, v1

    .line 345
    .line 346
    :goto_c
    move-object/from16 v18, v9

    .line 347
    .line 348
    goto :goto_b

    .line 349
    :catch_9
    move-object/from16 v24, v1

    .line 350
    .line 351
    :goto_d
    move-object/from16 v19, v7

    .line 352
    .line 353
    goto :goto_c

    .line 354
    :catch_a
    move-object/from16 v24, v1

    .line 355
    .line 356
    :goto_e
    move-object/from16 p1, v5

    .line 357
    .line 358
    goto :goto_d

    .line 359
    :catch_b
    move-object/from16 v24, v1

    .line 360
    .line 361
    move-object/from16 v16, v4

    .line 362
    .line 363
    goto :goto_e

    .line 364
    :catch_c
    move-object/from16 v24, v1

    .line 365
    .line 366
    move-object/from16 v16, v4

    .line 367
    .line 368
    move-object/from16 p1, v5

    .line 369
    .line 370
    move-object/from16 v19, v7

    .line 371
    .line 372
    move-object/from16 v18, v9

    .line 373
    .line 374
    move-object/from16 v23, v12

    .line 375
    .line 376
    :goto_f
    :try_start_10
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 377
    .line 378
    if-eqz v1, :cond_7

    .line 379
    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    .line 381
    .line 382
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_d

    .line 383
    .line 384
    .line 385
    move-object/from16 v4, v24

    .line 386
    .line 387
    :try_start_11
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_f

    .line 410
    .line 411
    .line 412
    goto :goto_10

    .line 413
    :catch_d
    move-object/from16 v4, v24

    .line 414
    .line 415
    goto :goto_11

    .line 416
    :cond_7
    move-object/from16 v4, v24

    .line 417
    .line 418
    :goto_10
    move-object/from16 v5, p1

    .line 419
    .line 420
    move-object v1, v4

    .line 421
    move-object/from16 v4, v16

    .line 422
    .line 423
    move-object/from16 v9, v18

    .line 424
    .line 425
    move-object/from16 v7, v19

    .line 426
    .line 427
    move-object/from16 v12, v23

    .line 428
    .line 429
    goto/16 :goto_3

    .line 430
    .line 431
    :catch_e
    move-object/from16 v16, v4

    .line 432
    .line 433
    move-object/from16 p1, v5

    .line 434
    .line 435
    move-object/from16 v19, v7

    .line 436
    .line 437
    move-object/from16 v18, v9

    .line 438
    .line 439
    move-object v4, v1

    .line 440
    :catch_f
    :goto_11
    :try_start_12
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 441
    .line 442
    if-eqz v1, :cond_8

    .line 443
    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    .line 445
    .line 446
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_11

    .line 466
    .line 467
    .line 468
    :cond_8
    move-object/from16 v5, p1

    .line 469
    .line 470
    move-object v1, v4

    .line 471
    move-object/from16 v4, v16

    .line 472
    .line 473
    move-object/from16 v9, v18

    .line 474
    .line 475
    move-object/from16 v7, v19

    .line 476
    .line 477
    goto/16 :goto_2

    .line 478
    .line 479
    :catch_10
    move-object/from16 v16, v4

    .line 480
    .line 481
    move-object/from16 p1, v5

    .line 482
    .line 483
    move-object v4, v1

    .line 484
    :catch_11
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 485
    .line 486
    if-eqz v1, :cond_9

    .line 487
    .line 488
    invoke-static {v4, v6, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    :cond_9
    move-object/from16 v5, p1

    .line 492
    .line 493
    move-object v1, v4

    .line 494
    move-object/from16 v4, v16

    .line 495
    .line 496
    goto/16 :goto_1

    .line 497
    .line 498
    :cond_a
    return-void

    .line 499
    :cond_b
    :goto_12
    iget-object v0, v0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 500
    .line 501
    iget-object v0, v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchTimeCountStats:Ljava/util/Map;

    .line 502
    .line 503
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 504
    .line 505
    .line 506
    return-void
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    const-string p0, "ActivityManagerPerformance"

    .line 2
    .line 3
    const-string v0, "CREATE TABLE IF NOT EXISTS AppLaunchTime (NAME TEXT unique, VALUE TEXT);"

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string p1, "AppLaunchTime table creation done"

    .line 9
    .line 10
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p1

    .line 15
    const-string v0, "failed to create AppLaunchTime table"

    .line 16
    .line 17
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    return-void
.end method
