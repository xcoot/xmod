.class public final Lcom/android/server/storage/DiskStatsFileLogger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDownloadsSize:J

.field public mPackageStats:Ljava/util/List;

.field public mResult:Lcom/android/server/storage/FileCollector$MeasurementResult;

.field public mSystemSize:J


# virtual methods
.method public final addAppsToJson(Lorg/json/JSONObject;)V
    .locals 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v1, Lorg/json/JSONArray;

    .line 4
    .line 5
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lorg/json/JSONArray;

    .line 9
    .line 10
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v3, Lorg/json/JSONArray;

    .line 14
    .line 15
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v4, Lorg/json/JSONArray;

    .line 19
    .line 20
    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    new-instance v6, Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 30
    .line 31
    .line 32
    move-object/from16 v7, p0

    .line 33
    .line 34
    iget-object v7, v7, Lcom/android/server/storage/DiskStatsFileLogger;->mPackageStats:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    if-eqz v8, :cond_2

    .line 45
    .line 46
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    check-cast v8, Landroid/content/pm/PackageStats;

    .line 51
    .line 52
    iget v9, v8, Landroid/content/pm/PackageStats;->userHandle:I

    .line 53
    .line 54
    if-eqz v9, :cond_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object v9, v8, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    check-cast v9, Landroid/content/pm/PackageStats;

    .line 64
    .line 65
    if-eqz v9, :cond_1

    .line 66
    .line 67
    iget-wide v10, v9, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 68
    .line 69
    iget-wide v12, v8, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 70
    .line 71
    add-long/2addr v10, v12

    .line 72
    iput-wide v10, v9, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 73
    .line 74
    iget-wide v10, v9, Landroid/content/pm/PackageStats;->codeSize:J

    .line 75
    .line 76
    iget-wide v12, v8, Landroid/content/pm/PackageStats;->codeSize:J

    .line 77
    .line 78
    add-long/2addr v10, v12

    .line 79
    iput-wide v10, v9, Landroid/content/pm/PackageStats;->codeSize:J

    .line 80
    .line 81
    iget-wide v10, v9, Landroid/content/pm/PackageStats;->dataSize:J

    .line 82
    .line 83
    iget-wide v12, v8, Landroid/content/pm/PackageStats;->dataSize:J

    .line 84
    .line 85
    add-long/2addr v10, v12

    .line 86
    iput-wide v10, v9, Landroid/content/pm/PackageStats;->dataSize:J

    .line 87
    .line 88
    iget-wide v10, v9, Landroid/content/pm/PackageStats;->externalCacheSize:J

    .line 89
    .line 90
    iget-wide v12, v8, Landroid/content/pm/PackageStats;->externalCacheSize:J

    .line 91
    .line 92
    add-long/2addr v10, v12

    .line 93
    iput-wide v10, v9, Landroid/content/pm/PackageStats;->externalCacheSize:J

    .line 94
    .line 95
    iget-wide v10, v9, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 96
    .line 97
    iget-wide v12, v8, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 98
    .line 99
    add-long/2addr v10, v12

    .line 100
    iput-wide v10, v9, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 101
    .line 102
    iget-wide v10, v9, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 103
    .line 104
    iget-wide v12, v8, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 105
    .line 106
    add-long/2addr v10, v12

    .line 107
    iput-wide v10, v9, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_1
    iget-object v9, v8, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    .line 111
    .line 112
    new-instance v10, Landroid/content/pm/PackageStats;

    .line 113
    .line 114
    invoke-direct {v10, v8}, Landroid/content/pm/PackageStats;-><init>(Landroid/content/pm/PackageStats;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v6, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {v6}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    const-wide/16 v7, 0x0

    .line 130
    .line 131
    move-wide v9, v7

    .line 132
    move-wide v11, v9

    .line 133
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result v13

    .line 137
    if-eqz v13, :cond_4

    .line 138
    .line 139
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v13

    .line 143
    check-cast v13, Ljava/util/Map$Entry;

    .line 144
    .line 145
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v13

    .line 149
    check-cast v13, Landroid/content/pm/PackageStats;

    .line 150
    .line 151
    iget-wide v14, v13, Landroid/content/pm/PackageStats;->codeSize:J

    .line 152
    .line 153
    move-object/from16 v16, v3

    .line 154
    .line 155
    move-object/from16 v17, v4

    .line 156
    .line 157
    iget-wide v3, v13, Landroid/content/pm/PackageStats;->dataSize:J

    .line 158
    .line 159
    move-object/from16 v18, v1

    .line 160
    .line 161
    iget-wide v0, v13, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 162
    .line 163
    move/from16 v19, v5

    .line 164
    .line 165
    move-object/from16 p0, v6

    .line 166
    .line 167
    if-eqz v5, :cond_3

    .line 168
    .line 169
    iget-wide v5, v13, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 170
    .line 171
    add-long/2addr v14, v5

    .line 172
    iget-wide v5, v13, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 173
    .line 174
    add-long/2addr v3, v5

    .line 175
    iget-wide v5, v13, Landroid/content/pm/PackageStats;->externalCacheSize:J

    .line 176
    .line 177
    add-long/2addr v0, v5

    .line 178
    :cond_3
    add-long/2addr v7, v14

    .line 179
    add-long/2addr v11, v3

    .line 180
    add-long/2addr v9, v0

    .line 181
    iget-object v5, v13, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    .line 182
    .line 183
    move-object/from16 v6, v18

    .line 184
    .line 185
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2, v14, v15}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 189
    .line 190
    .line 191
    move-object/from16 v5, v16

    .line 192
    .line 193
    invoke-virtual {v5, v3, v4}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 194
    .line 195
    .line 196
    move-object/from16 v3, v17

    .line 197
    .line 198
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 199
    .line 200
    .line 201
    move-object/from16 v0, p1

    .line 202
    .line 203
    move-object v4, v3

    .line 204
    move-object v3, v5

    .line 205
    move-object v1, v6

    .line 206
    move/from16 v5, v19

    .line 207
    .line 208
    move-object/from16 v6, p0

    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_4
    move-object v6, v1

    .line 212
    move-object v5, v3

    .line 213
    move-object v3, v4

    .line 214
    const-string/jumbo v0, "packageNames"

    .line 215
    .line 216
    .line 217
    move-object/from16 v1, p1

    .line 218
    .line 219
    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    .line 221
    .line 222
    const-string v0, "appSizes"

    .line 223
    .line 224
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    .line 226
    .line 227
    const-string v0, "cacheSizes"

    .line 228
    .line 229
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    .line 231
    .line 232
    const-string v0, "appDataSizes"

    .line 233
    .line 234
    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    .line 236
    .line 237
    const-string v0, "appSize"

    .line 238
    .line 239
    invoke-virtual {v1, v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 240
    .line 241
    .line 242
    const-string v0, "cacheSize"

    .line 243
    .line 244
    invoke-virtual {v1, v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 245
    .line 246
    .line 247
    const-string v0, "appDataSize"

    .line 248
    .line 249
    invoke-virtual {v1, v0, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 250
    .line 251
    .line 252
    return-void
.end method

.method public final dumpToFile(Ljava/io/File;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/io/PrintWriter;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mResult:Lcom/android/server/storage/FileCollector$MeasurementResult;

    .line 7
    .line 8
    new-instance v1, Lorg/json/JSONObject;

    .line 9
    .line 10
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    const-string/jumbo v2, "queryTime"

    .line 14
    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 21
    .line 22
    .line 23
    const-string/jumbo v2, "photosSize"

    .line 24
    .line 25
    .line 26
    iget-wide v3, p1, Lcom/android/server/storage/FileCollector$MeasurementResult;->imagesSize:J

    .line 27
    .line 28
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    const-string/jumbo v2, "videosSize"

    .line 32
    .line 33
    .line 34
    iget-wide v3, p1, Lcom/android/server/storage/FileCollector$MeasurementResult;->videosSize:J

    .line 35
    .line 36
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    const-string v2, "audioSize"

    .line 40
    .line 41
    iget-wide v3, p1, Lcom/android/server/storage/FileCollector$MeasurementResult;->audioSize:J

    .line 42
    .line 43
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    const-string v2, "downloadsSize"

    .line 47
    .line 48
    iget-wide v3, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mDownloadsSize:J

    .line 49
    .line 50
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 51
    .line 52
    .line 53
    const-string/jumbo v2, "systemSize"

    .line 54
    .line 55
    .line 56
    iget-wide v3, p0, Lcom/android/server/storage/DiskStatsFileLogger;->mSystemSize:J

    .line 57
    .line 58
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 59
    .line 60
    .line 61
    const-string/jumbo v2, "otherSize"

    .line 62
    .line 63
    .line 64
    iget-wide v3, p1, Lcom/android/server/storage/FileCollector$MeasurementResult;->miscSize:J

    .line 65
    .line 66
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v1}, Lcom/android/server/storage/DiskStatsFileLogger;->addAppsToJson(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception p0

    .line 74
    const-string p1, "DiskStatsLogger"

    .line 75
    .line 76
    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    const/4 v1, 0x0

    .line 84
    :goto_0
    if-eqz v1, :cond_0

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    :cond_0
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 90
    .line 91
    .line 92
    return-void
.end method
