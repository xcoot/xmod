.class public final Lcom/android/server/voiceinteraction/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/voiceinteraction/IEnrolledModelDb;


# virtual methods
.method public final deleteKeyphraseSoundModel(IILjava/lang/String;)Z
    .locals 2

    .line 1
    const-string/jumbo v0, "model_uuid=\'"

    .line 2
    .line 3
    .line 4
    invoke-static {p3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    .line 5
    .line 6
    .line 7
    move-result-object p3

    .line 8
    invoke-virtual {p3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 p2, 0x0

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return p2

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p1, "\'"

    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :try_start_1
    const-string/jumbo v0, "sound_model"

    .line 54
    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-virtual {p3, v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    const/4 p2, 0x1

    .line 64
    :cond_1
    :try_start_2
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 65
    .line 66
    .line 67
    monitor-exit p0

    .line 68
    return p2

    .line 69
    :catchall_1
    move-exception p1

    .line 70
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 71
    .line 72
    .line 73
    throw p1

    .line 74
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    throw p1
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "SELECT  * FROM sound_model"

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    const-string v2, "  Enrolled KeyphraseSoundModels:"

    .line 14
    .line 15
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_7

    .line 23
    .line 24
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    :cond_0
    array-length v3, v2

    .line 29
    const/4 v4, 0x0

    .line 30
    :goto_0
    if-ge v4, v3, :cond_6

    .line 31
    .line 32
    aget-object v5, v2, v4

    .line 33
    .line 34
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getType(I)I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-eqz v7, :cond_5

    .line 43
    .line 44
    const/4 v8, 0x1

    .line 45
    if-eq v7, v8, :cond_4

    .line 46
    .line 47
    const/4 v8, 0x2

    .line 48
    if-eq v7, v8, :cond_3

    .line 49
    .line 50
    const/4 v8, 0x3

    .line 51
    if-eq v7, v8, :cond_2

    .line 52
    .line 53
    const/4 v6, 0x4

    .line 54
    if-eq v7, v6, :cond_1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    const-string v6, "    %s: data blob\n"

    .line 58
    .line 59
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {p1, v6, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :catchall_0
    move-exception p1

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    const-string v7, "    %s: %s\n"

    .line 70
    .line 71
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    filled-new-array {v5, v6}, [Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {p1, v7, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    const-string v7, "    %s: %f\n"

    .line 84
    .line 85
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getFloat(I)F

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    filled-new-array {v5, v6}, [Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-virtual {p1, v7, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_4
    const-string v7, "    %s: %d\n"

    .line 102
    .line 103
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    filled-new-array {v5, v6}, [Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-virtual {p1, v7, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_5
    const-string v6, "    %s: null\n"

    .line 120
    .line 121
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-virtual {p1, v6, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 126
    .line 127
    .line 128
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_6
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 132
    .line 133
    .line 134
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 135
    .line 136
    .line 137
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    if-nez v3, :cond_0

    .line 139
    .line 140
    :cond_7
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 144
    .line 145
    .line 146
    monitor-exit p0

    .line 147
    return-void

    .line 148
    :catchall_1
    move-exception p1

    .line 149
    goto :goto_3

    .line 150
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 154
    .line 155
    .line 156
    throw p1

    .line 157
    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 158
    throw p1
.end method

.method public final getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .locals 3

    .line 1
    const-string v0, "\' AND locale=\'"

    const-string v1, "SELECT  * FROM sound_model WHERE keyphrase_id= \'"

    invoke-static {p3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p3

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p2, p1}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getValidKeyphraseSoundModelForUser(ILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final getKeyphraseSoundModel(ILjava/lang/String;Ljava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .locals 3

    .line 6
    const-string v0, "\' AND locale=\'"

    const-string v1, "SELECT  * FROM sound_model WHERE hint_text= \'"

    invoke-static {p3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p3

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getValidKeyphraseSoundModelForUser(ILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final getValidKeyphraseSoundModelForUser(ILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .locals 16

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    const/4 v0, 0x0

    .line 6
    move-object/from16 v2, p2

    .line 7
    .line 8
    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_a

    .line 17
    .line 18
    :goto_0
    const-string/jumbo v3, "type"

    .line 19
    .line 20
    .line 21
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    :cond_0
    :goto_1
    move/from16 v0, p1

    .line 32
    .line 33
    goto/16 :goto_7

    .line 34
    .line 35
    :cond_1
    const-string/jumbo v3, "model_uuid"

    .line 36
    .line 37
    .line 38
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    const-string v4, "SoundModelDBHelper"

    .line 47
    .line 48
    if-nez v3, :cond_2

    .line 49
    .line 50
    :try_start_1
    const-string v3, "Ignoring SoundModel since it doesn\'t specify an ID"

    .line 51
    .line 52
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    goto/16 :goto_9

    .line 58
    .line 59
    :cond_2
    const-string/jumbo v5, "vendor_uuid"

    .line 60
    .line 61
    .line 62
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    const/4 v6, -0x1

    .line 67
    if-eq v5, v6, :cond_3

    .line 68
    .line 69
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    goto :goto_2

    .line 74
    :cond_3
    move-object v5, v0

    .line 75
    :goto_2
    const-string v6, "keyphrase_id"

    .line 76
    .line 77
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    const-string v6, "data"

    .line 86
    .line 87
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getBlob(I)[B

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    const-string/jumbo v7, "recognition_modes"

    .line 96
    .line 97
    .line 98
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    .line 103
    .line 104
    .line 105
    move-result v9

    .line 106
    const-string/jumbo v7, "users"

    .line 107
    .line 108
    .line 109
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 118
    .line 119
    .line 120
    move-result v10

    .line 121
    const/4 v13, 0x0

    .line 122
    if-eqz v10, :cond_4

    .line 123
    .line 124
    move-object v12, v0

    .line 125
    goto :goto_4

    .line 126
    :cond_4
    const-string v10, ","

    .line 127
    .line 128
    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    array-length v10, v7

    .line 133
    new-array v10, v10, [I

    .line 134
    .line 135
    move v11, v13

    .line 136
    :goto_3
    array-length v12, v7

    .line 137
    if-ge v11, v12, :cond_5

    .line 138
    .line 139
    aget-object v12, v7, v11

    .line 140
    .line 141
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    move-result v12

    .line 145
    aput v12, v10, v11

    .line 146
    .line 147
    add-int/lit8 v11, v11, 0x1

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_5
    move-object v12, v10

    .line 151
    :goto_4
    const-string v7, "locale"

    .line 152
    .line 153
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    move-result v7

    .line 157
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    invoke-static {v7}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    .line 162
    .line 163
    .line 164
    move-result-object v10

    .line 165
    const-string v7, "hint_text"

    .line 166
    .line 167
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    move-result v7

    .line 171
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v11

    .line 175
    const-string/jumbo v7, "model_version"

    .line 176
    .line 177
    .line 178
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    move-result v7

    .line 182
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    .line 183
    .line 184
    .line 185
    move-result v14

    .line 186
    if-nez v12, :cond_6

    .line 187
    .line 188
    const-string v3, "Ignoring SoundModel since it doesn\'t specify users"

    .line 189
    .line 190
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    goto/16 :goto_1

    .line 194
    .line 195
    :cond_6
    array-length v4, v12

    .line 196
    move v7, v13

    .line 197
    :goto_5
    if-ge v7, v4, :cond_0

    .line 198
    .line 199
    aget v15, v12, v7

    .line 200
    .line 201
    move/from16 v0, p1

    .line 202
    .line 203
    if-ne v0, v15, :cond_8

    .line 204
    .line 205
    const/4 v0, 0x1

    .line 206
    new-array v0, v0, [Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    .line 207
    .line 208
    new-instance v4, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    .line 209
    .line 210
    move-object v7, v4

    .line 211
    invoke-direct/range {v7 .. v12}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;-><init>(IILjava/util/Locale;Ljava/lang/String;[I)V

    .line 212
    .line 213
    .line 214
    aput-object v4, v0, v13

    .line 215
    .line 216
    if-eqz v5, :cond_7

    .line 217
    .line 218
    invoke-static {v5}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    move-object v11, v4

    .line 223
    goto :goto_6

    .line 224
    :cond_7
    const/4 v11, 0x0

    .line 225
    :goto_6
    new-instance v4, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 226
    .line 227
    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 228
    .line 229
    .line 230
    move-result-object v10

    .line 231
    move-object v9, v4

    .line 232
    move-object v12, v6

    .line 233
    move-object v13, v0

    .line 234
    invoke-direct/range {v9 .. v14}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;-><init>(Ljava/util/UUID;Ljava/util/UUID;[B[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    .line 236
    .line 237
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 241
    .line 242
    .line 243
    return-object v4

    .line 244
    :cond_8
    add-int/lit8 v7, v7, 0x1

    .line 245
    .line 246
    const/4 v0, 0x0

    .line 247
    goto :goto_5

    .line 248
    :goto_7
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 249
    .line 250
    .line 251
    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 252
    if-nez v3, :cond_9

    .line 253
    .line 254
    goto :goto_8

    .line 255
    :cond_9
    const/4 v0, 0x0

    .line 256
    goto/16 :goto_0

    .line 257
    .line 258
    :cond_a
    :goto_8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 262
    .line 263
    .line 264
    const/4 v0, 0x0

    .line 265
    return-object v0

    .line 266
    :goto_9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 270
    .line 271
    .line 272
    throw v0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1
    const-string p0, "CREATE TABLE sound_model(model_uuid TEXT,vendor_uuid TEXT,keyphrase_id INTEGER,type INTEGER,data BLOB,recognition_modes INTEGER,locale TEXT,hint_text TEXT,users TEXT,model_version INTEGER,PRIMARY KEY (keyphrase_id,locale,users))"

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 7

    .line 1
    const-string p0, "CREATE TABLE sound_model(model_uuid TEXT,vendor_uuid TEXT,keyphrase_id INTEGER,type INTEGER,data BLOB,recognition_modes INTEGER,locale TEXT,hint_text TEXT,users TEXT,model_version INTEGER,PRIMARY KEY (keyphrase_id,locale,users))"

    .line 2
    .line 3
    const-string p3, "DROP TABLE IF EXISTS sound_model"

    .line 4
    .line 5
    const-string v0, "SoundModelDBHelper"

    .line 6
    .line 7
    const/4 v1, 0x4

    .line 8
    if-ge p2, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    if-ne p2, v1, :cond_1

    .line 18
    .line 19
    const-string v1, "Adding vendor UUID column"

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const-string v1, "ALTER TABLE sound_model ADD COLUMN vendor_uuid TEXT"

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 p2, p2, 0x1

    .line 30
    .line 31
    :cond_1
    :goto_0
    const/4 v1, 0x5

    .line 32
    if-ne p2, v1, :cond_b

    .line 33
    .line 34
    const-string v1, "SELECT * FROM sound_model"

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 47
    .line 48
    .line 49
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    if-eqz v3, :cond_3

    .line 51
    .line 52
    :cond_2
    :try_start_1
    new-instance v3, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;

    .line 53
    .line 54
    invoke-direct {v3, v1}, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;-><init>(Landroid/database/Cursor;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto/16 :goto_4

    .line 63
    .line 64
    :catch_0
    move-exception v3

    .line 65
    :try_start_2
    const-string v4, "Failed to extract V5 record"

    .line 66
    .line 67
    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    .line 69
    .line 70
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 71
    .line 72
    .line 73
    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    if-nez v3, :cond_2

    .line 75
    .line 76
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result p3

    .line 93
    if-eqz p3, :cond_a

    .line 94
    .line 95
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    check-cast p3, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;

    .line 100
    .line 101
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    iget-object v1, p3, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->modelUuid:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-eqz v4, :cond_7

    .line 115
    .line 116
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    check-cast v4, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;

    .line 121
    .line 122
    if-ne p3, v4, :cond_6

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_6
    invoke-virtual {p3, v4}, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->V6PrimaryKeyMatches(Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;)Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-eqz v5, :cond_5

    .line 130
    .line 131
    iget-object v5, p3, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->data:[B

    .line 132
    .line 133
    iget-object v4, v4, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->data:[B

    .line 134
    .line 135
    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-nez v4, :cond_5

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    if-eqz v4, :cond_9

    .line 151
    .line 152
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    check-cast v4, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;

    .line 157
    .line 158
    invoke-virtual {p3, v4}, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->V6PrimaryKeyMatches(Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;)Z

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    if-eqz v5, :cond_8

    .line 163
    .line 164
    if-ne p3, v4, :cond_4

    .line 165
    .line 166
    :cond_9
    :try_start_3
    invoke-virtual {p3, p1}, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->writeToDatabase(Landroid/database/sqlite/SQLiteDatabase;)J

    .line 167
    .line 168
    .line 169
    move-result-wide v3

    .line 170
    const-wide/16 v5, -0x1

    .line 171
    .line 172
    cmp-long p3, v3, v5

    .line 173
    .line 174
    if-nez p3, :cond_4

    .line 175
    .line 176
    new-instance p3, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    const-string v5, "Database write failed "

    .line 182
    .line 183
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v5, ": "

    .line 190
    .line 191
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p3, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p3

    .line 201
    invoke-static {v0, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 202
    .line 203
    .line 204
    goto :goto_2

    .line 205
    :catch_1
    move-exception p3

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    const-string v4, "Failed to update V6 record "

    .line 209
    .line 210
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-static {v0, v1, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    .line 222
    .line 223
    goto/16 :goto_2

    .line 224
    .line 225
    :cond_a
    add-int/lit8 p2, p2, 0x1

    .line 226
    .line 227
    goto :goto_5

    .line 228
    :goto_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 229
    .line 230
    .line 231
    throw p0

    .line 232
    :cond_b
    :goto_5
    const/4 p0, 0x6

    .line 233
    if-ne p2, p0, :cond_c

    .line 234
    .line 235
    const-string p0, "Adding model version column"

    .line 236
    .line 237
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    const-string p0, "ALTER TABLE sound_model ADD COLUMN model_version INTEGER DEFAULT -1"

    .line 241
    .line 242
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    :cond_c
    return-void
.end method

.method public final updateKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)Z
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    new-instance v1, Landroid/content/ContentValues;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v2, "model_uuid"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getVendorUuid()Ljava/util/UUID;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    const-string/jumbo v2, "vendor_uuid"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getVendorUuid()Ljava/util/UUID;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto/16 :goto_3

    .line 48
    .line 49
    :cond_0
    :goto_0
    const-string/jumbo v2, "type"

    .line 50
    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 58
    .line 59
    .line 60
    const-string v2, "data"

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getData()[B

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 67
    .line 68
    .line 69
    const-string/jumbo v2, "model_version"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getVersion()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    if-eqz v2, :cond_5

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    array-length v2, v2

    .line 94
    const/4 v4, 0x1

    .line 95
    if-ne v2, v4, :cond_5

    .line 96
    .line 97
    const-string v2, "keyphrase_id"

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    aget-object v5, v5, v3

    .line 104
    .line 105
    invoke-virtual {v5}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getId()I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 114
    .line 115
    .line 116
    const-string/jumbo v2, "recognition_modes"

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    aget-object v5, v5, v3

    .line 124
    .line 125
    invoke-virtual {v5}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getRecognitionModes()I

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    .line 135
    .line 136
    const-string/jumbo v2, "users"

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    aget-object v5, v5, v3

    .line 144
    .line 145
    invoke-virtual {v5}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getUsers()[I

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    if-nez v5, :cond_1

    .line 150
    .line 151
    const-string v5, ""

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    move v7, v3

    .line 160
    :goto_1
    array-length v8, v5

    .line 161
    if-ge v7, v8, :cond_3

    .line 162
    .line 163
    if-eqz v7, :cond_2

    .line 164
    .line 165
    const/16 v8, 0x2c

    .line 166
    .line 167
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    :cond_2
    aget v8, v5, v7

    .line 171
    .line 172
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    add-int/lit8 v7, v7, 0x1

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    :goto_2
    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    const-string v2, "locale"

    .line 186
    .line 187
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    aget-object v5, v5, v3

    .line 192
    .line 193
    invoke-virtual {v5}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getLocale()Ljava/util/Locale;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    const-string v2, "hint_text"

    .line 205
    .line 206
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    aget-object p1, p1, v3

    .line 211
    .line 212
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getText()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    .line 218
    .line 219
    :try_start_1
    const-string/jumbo p1, "sound_model"

    .line 220
    .line 221
    .line 222
    const/4 v2, 0x0

    .line 223
    const/4 v5, 0x5

    .line 224
    invoke-virtual {v0, p1, v2, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 225
    .line 226
    .line 227
    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 228
    const-wide/16 v5, -0x1

    .line 229
    .line 230
    cmp-long p1, v1, v5

    .line 231
    .line 232
    if-eqz p1, :cond_4

    .line 233
    .line 234
    move v3, v4

    .line 235
    :cond_4
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 236
    .line 237
    .line 238
    monitor-exit p0

    .line 239
    return v3

    .line 240
    :catchall_1
    move-exception p1

    .line 241
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 242
    .line 243
    .line 244
    throw p1

    .line 245
    :cond_5
    monitor-exit p0

    .line 246
    return v3

    .line 247
    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    throw p1
.end method
