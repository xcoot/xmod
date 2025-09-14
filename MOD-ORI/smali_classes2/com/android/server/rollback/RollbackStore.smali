.class public final Lcom/android/server/rollback/RollbackStore;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mRollbackDataDir:Ljava/io/File;

.field public final mRollbackHistoryDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/rollback/RollbackStore;->mRollbackDataDir:Ljava/io/File;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/rollback/RollbackStore;->mRollbackHistoryDir:Ljava/io/File;

    .line 7
    .line 8
    return-void
.end method

.method public static backupPackageCodePath(Lcom/android/server/rollback/Rollback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Ljava/io/File;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/rollback/Rollback;->mBackupDir:Ljava/io/File;

    .line 9
    .line 10
    invoke-direct {p2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 14
    .line 15
    .line 16
    new-instance p0, Ljava/io/File;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {p0, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    const/4 v1, 0x0

    .line 27
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v2}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-wide v2, v2, Landroid/system/StructStat;->st_dev:J

    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-static {p2}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    iget-wide v4, p2, Landroid/system/StructStat;->st_dev:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    cmp-long p2, v2, v4

    .line 48
    .line 49
    if-nez p2, :cond_0

    .line 50
    .line 51
    move p2, p1

    .line 52
    goto :goto_0

    .line 53
    :catch_0
    :cond_0
    move p2, v1

    .line 54
    :goto_0
    xor-int/2addr p2, p1

    .line 55
    if-nez p2, :cond_2

    .line 56
    .line 57
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-static {v2, v3}, Landroid/system/Os;->link(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :catch_1
    move-exception p2

    .line 70
    const-string/jumbo v2, "persist.rollback.is_test"

    .line 71
    .line 72
    .line 73
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-nez v2, :cond_1

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 81
    .line 82
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    throw p0

    .line 86
    :cond_2
    :goto_1
    move p1, p2

    .line 87
    :goto_2
    if-eqz p1, :cond_3

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    new-array p2, v1, [Ljava/nio/file/CopyOption;

    .line 98
    .line 99
    invoke-static {p1, p0, p2}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 100
    .line 101
    .line 102
    :cond_3
    return-void
.end method

.method public static extensionVersionsToJson(Landroid/util/SparseIntArray;)Lorg/json/JSONArray;
    .locals 5

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    new-instance v2, Lorg/json/JSONObject;

    .line 14
    .line 15
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string/jumbo v3, "sdkVersion"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 26
    .line 27
    .line 28
    const-string v3, "extensionVersion"

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 38
    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-object v0
.end method

.method public static loadRollbacks(Ljava/io/File;)Ljava/util/List;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    array-length v1, p0

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-ge v2, v1, :cond_1

    .line 16
    .line 17
    aget-object v3, p0, v2

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    :try_start_0
    new-instance v4, Ljava/io/File;

    .line 26
    .line 27
    const-string/jumbo v5, "rollback.json"

    .line 28
    .line 29
    .line 30
    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v5, Lorg/json/JSONObject;

    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-static {v4}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v5, v3}, Lcom/android/server/rollback/RollbackStore;->rollbackFromJson(Lorg/json/JSONObject;Ljava/io/File;)Lcom/android/server/rollback/Rollback;

    .line 47
    .line 48
    .line 49
    move-result-object v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :try_start_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :catch_0
    move-exception v4

    .line 55
    goto :goto_1

    .line 56
    :catch_1
    move-exception v4

    .line 57
    new-instance v5, Ljava/io/IOException;

    .line 58
    .line 59
    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    throw v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 63
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v6, "Unable to read rollback at "

    .line 66
    .line 67
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    const-string v6, "RollbackManager"

    .line 78
    .line 79
    invoke-static {v6, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    .line 81
    .line 82
    invoke-static {v3}, Lcom/android/server/rollback/RollbackStore;->removeFile(Ljava/io/File;)V

    .line 83
    .line 84
    .line 85
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    return-object v0
.end method

.method public static removeFile(Ljava/io/File;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    array-length v1, v0

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_0

    .line 14
    .line 15
    aget-object v3, v0, v2

    .line 16
    .line 17
    invoke-static {v3}, Lcom/android/server/rollback/RollbackStore;->removeFile(Ljava/io/File;)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public static rollbackFromJson(Lorg/json/JSONObject;Ljava/io/File;)Lcom/android/server/rollback/Rollback;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v15, Lcom/android/server/rollback/Rollback;

    .line 4
    .line 5
    const-string v5, "info"

    .line 6
    .line 7
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 8
    .line 9
    .line 10
    move-result-object v5

    .line 11
    new-instance v12, Landroid/content/rollback/RollbackInfo;

    .line 12
    .line 13
    const-string/jumbo v6, "rollbackId"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v7

    .line 20
    const-string/jumbo v6, "packages"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    new-instance v8, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    const/4 v9, 0x0

    .line 33
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    .line 34
    .line 35
    .line 36
    move-result v10

    .line 37
    const-string v11, "longVersionCode"

    .line 38
    .line 39
    const-string/jumbo v13, "packageName"

    .line 40
    .line 41
    .line 42
    const-string/jumbo v14, "userId"

    .line 43
    .line 44
    .line 45
    if-ge v9, v10, :cond_3

    .line 46
    .line 47
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    move-result-object v10

    .line 51
    const-string/jumbo v1, "versionRolledBackFrom"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v3

    .line 66
    new-instance v1, Landroid/content/pm/VersionedPackage;

    .line 67
    .line 68
    invoke-direct {v1, v2, v3, v4}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    .line 69
    .line 70
    .line 71
    const-string/jumbo v2, "versionRolledBackTo"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    move-object/from16 v25, v6

    .line 83
    .line 84
    move v4, v7

    .line 85
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 86
    .line 87
    .line 88
    move-result-wide v6

    .line 89
    new-instance v2, Landroid/content/pm/VersionedPackage;

    .line 90
    .line 91
    invoke-direct {v2, v3, v6, v7}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    .line 92
    .line 93
    .line 94
    const-string/jumbo v3, "pendingBackups"

    .line 95
    .line 96
    .line 97
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    new-instance v6, Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .line 105
    .line 106
    const/4 v7, 0x0

    .line 107
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 108
    .line 109
    .line 110
    move-result v11

    .line 111
    if-ge v7, v11, :cond_0

    .line 112
    .line 113
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getInt(I)I

    .line 114
    .line 115
    .line 116
    move-result v11

    .line 117
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v11

    .line 121
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    const/4 v11, 0x1

    .line 125
    add-int/2addr v7, v11

    .line 126
    goto :goto_1

    .line 127
    :cond_0
    const-string/jumbo v3, "pendingRestores"

    .line 128
    .line 129
    .line 130
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    new-instance v7, Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .line 138
    .line 139
    const/4 v11, 0x0

    .line 140
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 141
    .line 142
    .line 143
    move-result v13

    .line 144
    if-ge v11, v13, :cond_1

    .line 145
    .line 146
    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 147
    .line 148
    .line 149
    move-result-object v13

    .line 150
    move-object/from16 v16, v3

    .line 151
    .line 152
    new-instance v3, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;

    .line 153
    .line 154
    move-object/from16 v26, v15

    .line 155
    .line 156
    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    move-result v15

    .line 160
    move-object/from16 v17, v14

    .line 161
    .line 162
    const-string v14, "appId"

    .line 163
    .line 164
    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    move-result v14

    .line 168
    const-string/jumbo v0, "seInfo"

    .line 169
    .line 170
    .line 171
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-direct {v3, v15, v14, v0}, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;-><init>(IILjava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    const/4 v0, 0x1

    .line 182
    add-int/2addr v11, v0

    .line 183
    move-object/from16 v0, p0

    .line 184
    .line 185
    move-object/from16 v3, v16

    .line 186
    .line 187
    move-object/from16 v14, v17

    .line 188
    .line 189
    move-object/from16 v15, v26

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_1
    move-object/from16 v26, v15

    .line 193
    .line 194
    const-string v0, "isApex"

    .line 195
    .line 196
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 197
    .line 198
    .line 199
    move-result v21

    .line 200
    const-string v0, "isApkInApex"

    .line 201
    .line 202
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 203
    .line 204
    .line 205
    move-result v22

    .line 206
    const-string v0, "installedUsers"

    .line 207
    .line 208
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    new-instance v3, Ljava/util/ArrayList;

    .line 213
    .line 214
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .line 216
    .line 217
    const/4 v11, 0x0

    .line 218
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 219
    .line 220
    .line 221
    move-result v13

    .line 222
    if-ge v11, v13, :cond_2

    .line 223
    .line 224
    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getInt(I)I

    .line 225
    .line 226
    .line 227
    move-result v13

    .line 228
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    .line 230
    .line 231
    move-result-object v13

    .line 232
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    const/4 v13, 0x1

    .line 236
    add-int/2addr v11, v13

    .line 237
    goto :goto_3

    .line 238
    :cond_2
    const-string/jumbo v0, "rollbackDataPolicy"

    .line 239
    .line 240
    .line 241
    const/4 v11, 0x0

    .line 242
    invoke-virtual {v10, v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 243
    .line 244
    .line 245
    move-result v24

    .line 246
    new-instance v0, Landroid/content/rollback/PackageRollbackInfo;

    .line 247
    .line 248
    move-object/from16 v16, v0

    .line 249
    .line 250
    move-object/from16 v17, v1

    .line 251
    .line 252
    move-object/from16 v18, v2

    .line 253
    .line 254
    move-object/from16 v19, v6

    .line 255
    .line 256
    move-object/from16 v20, v7

    .line 257
    .line 258
    move-object/from16 v23, v3

    .line 259
    .line 260
    invoke-direct/range {v16 .. v24}, Landroid/content/rollback/PackageRollbackInfo;-><init>(Landroid/content/pm/VersionedPackage;Landroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/ArrayList;ZZLjava/util/List;I)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    const/4 v0, 0x1

    .line 267
    add-int/2addr v9, v0

    .line 268
    move-object/from16 v0, p0

    .line 269
    .line 270
    move v7, v4

    .line 271
    move-object/from16 v6, v25

    .line 272
    .line 273
    move-object/from16 v15, v26

    .line 274
    .line 275
    goto/16 :goto_0

    .line 276
    .line 277
    :cond_3
    move v4, v7

    .line 278
    move-object/from16 v17, v14

    .line 279
    .line 280
    move-object/from16 v26, v15

    .line 281
    .line 282
    const-string v0, "isStaged"

    .line 283
    .line 284
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 285
    .line 286
    .line 287
    move-result v9

    .line 288
    const-string v0, "causePackages"

    .line 289
    .line 290
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    new-instance v10, Ljava/util/ArrayList;

    .line 295
    .line 296
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .line 298
    .line 299
    const/4 v1, 0x0

    .line 300
    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    if-ge v1, v2, :cond_4

    .line 305
    .line 306
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 315
    .line 316
    .line 317
    move-result-wide v6

    .line 318
    new-instance v2, Landroid/content/pm/VersionedPackage;

    .line 319
    .line 320
    invoke-direct {v2, v3, v6, v7}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    const/4 v2, 0x1

    .line 327
    add-int/2addr v1, v2

    .line 328
    goto :goto_4

    .line 329
    :cond_4
    const-string v0, "committedSessionId"

    .line 330
    .line 331
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 332
    .line 333
    .line 334
    move-result v11

    .line 335
    move-object v6, v12

    .line 336
    move v7, v4

    .line 337
    invoke-direct/range {v6 .. v11}, Landroid/content/rollback/RollbackInfo;-><init>(ILjava/util/List;ZLjava/util/List;I)V

    .line 338
    .line 339
    .line 340
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->recoverabilityDetection()Z

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    if-eqz v0, :cond_5

    .line 345
    .line 346
    const-string/jumbo v0, "rollbackImpactLevel"

    .line 347
    .line 348
    .line 349
    const/4 v1, 0x0

    .line 350
    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 351
    .line 352
    .line 353
    move-result v0

    .line 354
    invoke-virtual {v12, v0}, Landroid/content/rollback/RollbackInfo;->setRollbackImpactLevel(I)V

    .line 355
    .line 356
    .line 357
    :cond_5
    const-string/jumbo v0, "timestamp"

    .line 358
    .line 359
    .line 360
    move-object/from16 v1, p0

    .line 361
    .line 362
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    invoke-static {v0}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    .line 367
    .line 368
    .line 369
    move-result-object v8

    .line 370
    const-string/jumbo v0, "stagedSessionId"

    .line 371
    .line 372
    .line 373
    const/4 v2, -0x1

    .line 374
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 375
    .line 376
    .line 377
    move-result v0

    .line 378
    const-string/jumbo v3, "originalSessionId"

    .line 379
    .line 380
    .line 381
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 382
    .line 383
    .line 384
    move-result v9

    .line 385
    const-string/jumbo v0, "state"

    .line 386
    .line 387
    .line 388
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 396
    .line 397
    .line 398
    move-result v3

    .line 399
    sparse-switch v3, :sswitch_data_0

    .line 400
    .line 401
    .line 402
    goto :goto_5

    .line 403
    :sswitch_0
    const-string v3, "enabling"

    .line 404
    .line 405
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    move-result v3

    .line 409
    if-nez v3, :cond_6

    .line 410
    .line 411
    goto :goto_5

    .line 412
    :cond_6
    const/4 v2, 0x3

    .line 413
    goto :goto_5

    .line 414
    :sswitch_1
    const-string v3, "deleted"

    .line 415
    .line 416
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    move-result v3

    .line 420
    if-nez v3, :cond_7

    .line 421
    .line 422
    goto :goto_5

    .line 423
    :cond_7
    const/4 v2, 0x2

    .line 424
    goto :goto_5

    .line 425
    :sswitch_2
    const-string v3, "available"

    .line 426
    .line 427
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move-result v3

    .line 431
    if-nez v3, :cond_8

    .line 432
    .line 433
    goto :goto_5

    .line 434
    :cond_8
    const/4 v2, 0x1

    .line 435
    goto :goto_5

    .line 436
    :sswitch_3
    const-string v3, "committed"

    .line 437
    .line 438
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    move-result v3

    .line 442
    if-nez v3, :cond_9

    .line 443
    .line 444
    goto :goto_5

    .line 445
    :cond_9
    const/4 v2, 0x0

    .line 446
    :goto_5
    packed-switch v2, :pswitch_data_0

    .line 447
    .line 448
    .line 449
    new-instance v1, Ljava/text/ParseException;

    .line 450
    .line 451
    const-string v2, "Invalid rollback state: "

    .line 452
    .line 453
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    const/4 v2, 0x0

    .line 458
    invoke-direct {v1, v0, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 459
    .line 460
    .line 461
    throw v1

    .line 462
    :pswitch_0
    const/4 v10, 0x0

    .line 463
    goto :goto_6

    .line 464
    :pswitch_1
    const/4 v0, 0x4

    .line 465
    move v10, v0

    .line 466
    goto :goto_6

    .line 467
    :pswitch_2
    const/4 v10, 0x1

    .line 468
    goto :goto_6

    .line 469
    :pswitch_3
    const/4 v10, 0x3

    .line 470
    :goto_6
    const-string/jumbo v0, "stateDescription"

    .line 471
    .line 472
    .line 473
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v11

    .line 477
    const-string/jumbo v0, "restoreUserDataInProgress"

    .line 478
    .line 479
    .line 480
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 481
    .line 482
    .line 483
    move-result v0

    .line 484
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 485
    .line 486
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 487
    .line 488
    .line 489
    move-result v2

    .line 490
    move-object/from16 v3, v17

    .line 491
    .line 492
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 493
    .line 494
    .line 495
    move-result v13

    .line 496
    const-string v2, "installerPackageName"

    .line 497
    .line 498
    const-string v3, ""

    .line 499
    .line 500
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v14

    .line 504
    const-string v2, "extensionVersions"

    .line 505
    .line 506
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 507
    .line 508
    .line 509
    move-result-object v2

    .line 510
    if-nez v2, :cond_a

    .line 511
    .line 512
    new-instance v2, Landroid/util/SparseIntArray;

    .line 513
    .line 514
    const/4 v3, 0x0

    .line 515
    invoke-direct {v2, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 516
    .line 517
    .line 518
    move-object v15, v2

    .line 519
    goto :goto_8

    .line 520
    :cond_a
    const/4 v3, 0x0

    .line 521
    new-instance v4, Landroid/util/SparseIntArray;

    .line 522
    .line 523
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 524
    .line 525
    .line 526
    move-result v5

    .line 527
    invoke-direct {v4, v5}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 528
    .line 529
    .line 530
    :goto_7
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 531
    .line 532
    .line 533
    move-result v5

    .line 534
    if-ge v3, v5, :cond_b

    .line 535
    .line 536
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 537
    .line 538
    .line 539
    move-result-object v5

    .line 540
    const-string/jumbo v6, "sdkVersion"

    .line 541
    .line 542
    .line 543
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 544
    .line 545
    .line 546
    move-result v6

    .line 547
    const-string v7, "extensionVersion"

    .line 548
    .line 549
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 550
    .line 551
    .line 552
    move-result v5

    .line 553
    invoke-virtual {v4, v6, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 554
    .line 555
    .line 556
    const/4 v5, 0x1

    .line 557
    add-int/2addr v3, v5

    .line 558
    goto :goto_7

    .line 559
    :cond_b
    move-object v15, v4

    .line 560
    :goto_8
    move-object/from16 v5, v26

    .line 561
    .line 562
    move-object v6, v12

    .line 563
    move-object/from16 v7, p1

    .line 564
    .line 565
    move v12, v0

    .line 566
    move-object/from16 v0, v26

    .line 567
    .line 568
    invoke-direct/range {v5 .. v15}, Lcom/android/server/rollback/Rollback;-><init>(Landroid/content/rollback/RollbackInfo;Ljava/io/File;Ljava/time/Instant;IILjava/lang/String;ZILjava/lang/String;Landroid/util/SparseIntArray;)V

    .line 569
    .line 570
    .line 571
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->rollbackLifetime()Z

    .line 572
    .line 573
    .line 574
    move-result v2

    .line 575
    if-eqz v2, :cond_c

    .line 576
    .line 577
    const-string/jumbo v2, "rollbackLifetimeMillis"

    .line 578
    .line 579
    .line 580
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 581
    .line 582
    .line 583
    move-result-wide v1

    .line 584
    invoke-virtual {v0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 585
    .line 586
    .line 587
    iput-wide v1, v0, Lcom/android/server/rollback/Rollback;->mRollbackLifetimeMillis:J

    .line 588
    .line 589
    :cond_c
    return-object v0

    .line 590
    nop

    .line 591
    :sswitch_data_0
    .sparse-switch
        -0x58e10884 -> :sswitch_3
        -0x2bbe7537 -> :sswitch_2
        0x5c6a3019 -> :sswitch_1
        0x61e1ed80 -> :sswitch_0
    .end sparse-switch

    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static rollbackInfoToJson(Landroid/content/rollback/RollbackInfo;)Lorg/json/JSONObject;
    .locals 13

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const-string/jumbo v2, "rollbackId"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Lorg/json/JSONArray;

    .line 21
    .line 22
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_3

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Landroid/content/rollback/PackageRollbackInfo;

    .line 40
    .line 41
    new-instance v4, Lorg/json/JSONObject;

    .line 42
    .line 43
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-static {v5}, Lcom/android/server/rollback/RollbackStore;->toJson(Landroid/content/pm/VersionedPackage;)Lorg/json/JSONObject;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    const-string/jumbo v6, "versionRolledBackFrom"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackTo()Landroid/content/pm/VersionedPackage;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-static {v5}, Lcom/android/server/rollback/RollbackStore;->toJson(Landroid/content/pm/VersionedPackage;)Lorg/json/JSONObject;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    const-string/jumbo v6, "versionRolledBackTo"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->getPendingBackups()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->getPendingRestores()Ljava/util/ArrayList;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->getSnapshottedUsers()Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    new-instance v8, Lorg/json/JSONArray;

    .line 87
    .line 88
    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 89
    .line 90
    .line 91
    const/4 v9, 0x0

    .line 92
    move v10, v9

    .line 93
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 94
    .line 95
    .line 96
    move-result v11

    .line 97
    if-ge v10, v11, :cond_0

    .line 98
    .line 99
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v11

    .line 103
    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 104
    .line 105
    .line 106
    add-int/lit8 v10, v10, 0x1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_0
    const-string/jumbo v5, "pendingBackups"

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    .line 114
    .line 115
    new-instance v5, Lorg/json/JSONArray;

    .line 116
    .line 117
    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    if-eqz v8, :cond_1

    .line 129
    .line 130
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v8

    .line 134
    check-cast v8, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;

    .line 135
    .line 136
    new-instance v10, Lorg/json/JSONObject;

    .line 137
    .line 138
    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 139
    .line 140
    .line 141
    iget v11, v8, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;->userId:I

    .line 142
    .line 143
    const-string/jumbo v12, "userId"

    .line 144
    .line 145
    .line 146
    invoke-virtual {v10, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 147
    .line 148
    .line 149
    const-string v11, "appId"

    .line 150
    .line 151
    iget v12, v8, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;->appId:I

    .line 152
    .line 153
    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 154
    .line 155
    .line 156
    const-string/jumbo v11, "seInfo"

    .line 157
    .line 158
    .line 159
    iget-object v8, v8, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;->seInfo:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v10, v11, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_1
    const-string/jumbo v6, "pendingRestores"

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    .line 173
    .line 174
    const-string v5, "isApex"

    .line 175
    .line 176
    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    .line 177
    .line 178
    .line 179
    move-result v6

    .line 180
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 181
    .line 182
    .line 183
    const-string v5, "isApkInApex"

    .line 184
    .line 185
    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->isApkInApex()Z

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 190
    .line 191
    .line 192
    new-instance v5, Lorg/json/JSONArray;

    .line 193
    .line 194
    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 195
    .line 196
    .line 197
    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 198
    .line 199
    .line 200
    move-result v6

    .line 201
    if-ge v9, v6, :cond_2

    .line 202
    .line 203
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 208
    .line 209
    .line 210
    add-int/lit8 v9, v9, 0x1

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_2
    const-string v6, "installedUsers"

    .line 214
    .line 215
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    .line 217
    .line 218
    const-string/jumbo v5, "rollbackDataPolicy"

    .line 219
    .line 220
    .line 221
    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->getRollbackDataPolicy()I

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 229
    .line 230
    .line 231
    goto/16 :goto_0

    .line 232
    .line 233
    :cond_3
    const-string/jumbo v1, "packages"

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 237
    .line 238
    .line 239
    const-string v1, "isStaged"

    .line 240
    .line 241
    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->getCausePackages()Ljava/util/List;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    new-instance v2, Lorg/json/JSONArray;

    .line 253
    .line 254
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 255
    .line 256
    .line 257
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 262
    .line 263
    .line 264
    move-result v3

    .line 265
    if-eqz v3, :cond_4

    .line 266
    .line 267
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    check-cast v3, Landroid/content/pm/VersionedPackage;

    .line 272
    .line 273
    invoke-static {v3}, Lcom/android/server/rollback/RollbackStore;->toJson(Landroid/content/pm/VersionedPackage;)Lorg/json/JSONObject;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 278
    .line 279
    .line 280
    goto :goto_4

    .line 281
    :cond_4
    const-string v1, "causePackages"

    .line 282
    .line 283
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 284
    .line 285
    .line 286
    const-string v1, "committedSessionId"

    .line 287
    .line 288
    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->getCommittedSessionId()I

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 293
    .line 294
    .line 295
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->recoverabilityDetection()Z

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    if-eqz v1, :cond_5

    .line 300
    .line 301
    const-string/jumbo v1, "rollbackImpactLevel"

    .line 302
    .line 303
    .line 304
    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->getRollbackImpactLevel()I

    .line 305
    .line 306
    .line 307
    move-result p0

    .line 308
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 309
    .line 310
    .line 311
    :cond_5
    return-object v0
.end method

.method public static saveRollback(Lcom/android/server/rollback/Rollback;Ljava/io/File;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/util/AtomicFile;

    .line 2
    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    const-string/jumbo v2, "rollback.json"

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 16
    .line 17
    .line 18
    new-instance p1, Lorg/json/JSONObject;

    .line 19
    .line 20
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "info"

    .line 24
    .line 25
    iget-object v3, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 26
    .line 27
    invoke-static {v3}, Lcom/android/server/rollback/RollbackStore;->rollbackInfoToJson(Landroid/content/rollback/RollbackInfo;)Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    const-string/jumbo v2, "timestamp"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 38
    .line 39
    .line 40
    iget-object v3, p0, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/time/Instant;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->rollbackLifetime()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    const-string/jumbo v2, "rollbackLifetimeMillis"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 59
    .line 60
    .line 61
    iget-wide v3, p0, Lcom/android/server/rollback/Rollback;->mRollbackLifetimeMillis:J

    .line 62
    .line 63
    invoke-virtual {p1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception p1

    .line 68
    goto :goto_1

    .line 69
    :cond_0
    :goto_0
    const-string/jumbo v2, "originalSessionId"

    .line 70
    .line 71
    .line 72
    iget v3, p0, Lcom/android/server/rollback/Rollback;->mOriginalSessionId:I

    .line 73
    .line 74
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 75
    .line 76
    .line 77
    const-string/jumbo v2, "state"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getStateAsString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    const-string/jumbo v2, "stateDescription"

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 91
    .line 92
    .line 93
    iget-object v3, p0, Lcom/android/server/rollback/Rollback;->mStateDescription:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    .line 97
    .line 98
    const-string/jumbo v2, "restoreUserDataInProgress"

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 102
    .line 103
    .line 104
    iget-boolean v3, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    .line 105
    .line 106
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 107
    .line 108
    .line 109
    const-string/jumbo v2, "userId"

    .line 110
    .line 111
    .line 112
    iget v3, p0, Lcom/android/server/rollback/Rollback;->mUserId:I

    .line 113
    .line 114
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 115
    .line 116
    .line 117
    const-string v2, "installerPackageName"

    .line 118
    .line 119
    iget-object v3, p0, Lcom/android/server/rollback/Rollback;->mInstallerPackageName:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    .line 123
    .line 124
    const-string v2, "extensionVersions"

    .line 125
    .line 126
    iget-object v3, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    .line 127
    .line 128
    invoke-static {v3}, Lcom/android/server/rollback/RollbackStore;->extensionVersionsToJson(Landroid/util/SparseIntArray;)Lorg/json/JSONArray;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string v3, "Unable to save rollback for: "

    .line 160
    .line 161
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    iget-object p0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 165
    .line 166
    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    .line 167
    .line 168
    .line 169
    move-result p0

    .line 170
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    const-string v2, "RollbackManager"

    .line 178
    .line 179
    invoke-static {v2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    .line 181
    .line 182
    if-eqz v1, :cond_1

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 185
    .line 186
    .line 187
    :cond_1
    :goto_2
    return-void
.end method

.method public static toJson(Landroid/content/pm/VersionedPackage;)Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string/jumbo v2, "packageName"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    const-string v1, "longVersionCode"

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    return-object v0
.end method
