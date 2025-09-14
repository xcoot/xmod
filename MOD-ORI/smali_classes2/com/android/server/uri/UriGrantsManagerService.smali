.class public Lcom/android/server/uri/UriGrantsManagerService;
.super Landroid/app/IUriGrantsManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/uri/UriMetricsHelper$PersistentUriGrantsProvider;


# static fields
.field public static final TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;


# instance fields
.field public mAmInternal:Landroid/app/ActivityManagerInternal;

.field public final mGrantFile:Landroid/util/AtomicFile;

.field public final mGrantedUriPermissions:Landroid/util/SparseArray;

.field public final mH:Lcom/android/server/uri/UriGrantsManagerService$H;

.field public final mLock:Ljava/lang/Object;

.field public mMetricsHelper:Lcom/android/server/uri/UriMetricsHelper;

.field public mPmInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mUriPermissionHistory:Ljava/util/ArrayList;


# direct methods
.method public static -$$Nest$mcheckAuthorityGrantsLocked(Lcom/android/server/uri/UriGrantsManagerService;ILandroid/content/pm/ProviderInfo;IZ)Z
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/util/ArrayMap;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    if-eqz p0, :cond_5

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    sub-int/2addr v0, v1

    .line 18
    :goto_0
    if-ltz v0, :cond_5

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/android/server/uri/GrantUri;

    .line 25
    .line 26
    iget v3, v2, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    .line 27
    .line 28
    if-eq v3, p3, :cond_0

    .line 29
    .line 30
    if-nez p4, :cond_4

    .line 31
    .line 32
    :cond_0
    iget-object v2, v2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget-object v3, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 39
    .line 40
    const/16 v4, 0x3b

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    const/4 v5, -0x1

    .line 47
    if-ne v4, v5, :cond_1

    .line 48
    .line 49
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    goto :goto_2

    .line 54
    :cond_1
    const-string v4, ";"

    .line 55
    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    array-length v4, v3

    .line 61
    move v5, p1

    .line 62
    :goto_1
    if-ge v5, v4, :cond_3

    .line 63
    .line 64
    aget-object v6, v3, v5

    .line 65
    .line 66
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-eqz v6, :cond_2

    .line 71
    .line 72
    move v2, v1

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    move v2, p1

    .line 78
    :goto_2
    if-eqz v2, :cond_4

    .line 79
    .line 80
    move p1, v1

    .line 81
    goto :goto_3

    .line 82
    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_5
    :goto_3
    return p1
.end method

.method public static -$$Nest$mreadGrantedUriPermissionsLocked(Lcom/android/server/uri/UriGrantsManagerService;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v1, "Failed reading Uri grants"

    .line 7
    .line 8
    const-string v2, "UriGrantsManagerService"

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v3

    .line 14
    const/4 v5, 0x0

    .line 15
    :try_start_0
    iget-object v6, v0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 16
    .line 17
    :try_start_1
    invoke-virtual {v6}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 18
    .line 19
    .line 20
    move-result-object v6
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 21
    :try_start_2
    invoke-static {v6}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    :goto_0
    invoke-interface {v7}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    const/4 v9, 0x1

    .line 30
    if-eq v8, v9, :cond_5

    .line 31
    .line 32
    invoke-interface {v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v9

    .line 36
    const/4 v10, 0x2

    .line 37
    if-ne v8, v10, :cond_4

    .line 38
    .line 39
    const-string/jumbo v8, "uri-grant"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    if-eqz v8, :cond_4

    .line 47
    .line 48
    const-string/jumbo v8, "userHandle"

    .line 49
    .line 50
    .line 51
    const/16 v9, -0x2710

    .line 52
    .line 53
    invoke-interface {v7, v5, v8, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    if-eq v8, v9, :cond_0

    .line 58
    .line 59
    move v10, v8

    .line 60
    goto :goto_1

    .line 61
    :cond_0
    const-string/jumbo v8, "sourceUserId"

    .line 62
    .line 63
    .line 64
    invoke-interface {v7, v5, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    const-string/jumbo v9, "targetUserId"

    .line 69
    .line 70
    .line 71
    invoke-interface {v7, v5, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    move v10, v9

    .line 76
    :goto_1
    const-string/jumbo v9, "sourcePkg"

    .line 77
    .line 78
    .line 79
    invoke-interface {v7, v5, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    const-string/jumbo v11, "targetPkg"

    .line 84
    .line 85
    .line 86
    invoke-interface {v7, v5, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v11

    .line 90
    const-string/jumbo v12, "uri"

    .line 91
    .line 92
    .line 93
    invoke-interface {v7, v5, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v12

    .line 97
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 98
    .line 99
    .line 100
    move-result-object v12

    .line 101
    const-string/jumbo v13, "prefix"

    .line 102
    .line 103
    .line 104
    const/4 v14, 0x0

    .line 105
    invoke-interface {v7, v5, v13, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 106
    .line 107
    .line 108
    move-result v13

    .line 109
    const-string/jumbo v15, "modeFlags"

    .line 110
    .line 111
    .line 112
    invoke-interface {v7, v5, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result v15

    .line 116
    const-string v14, "createdTime"
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 117
    .line 118
    move-object/from16 v16, v1

    .line 119
    .line 120
    move-object/from16 v17, v2

    .line 121
    .line 122
    :try_start_3
    invoke-interface {v7, v5, v14, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 123
    .line 124
    .line 125
    move-result-wide v1

    .line 126
    invoke-virtual {v12}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v14

    .line 130
    const/high16 v5, 0xc0000

    .line 131
    .line 132
    move-wide/from16 v18, v3

    .line 133
    .line 134
    const/16 v3, 0x3e8

    .line 135
    .line 136
    invoke-virtual {v0, v8, v5, v3, v14}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(IIILjava/lang/String;)Landroid/content/pm/ProviderInfo;

    .line 137
    .line 138
    .line 139
    move-result-object v3
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 140
    if-eqz v3, :cond_3

    .line 141
    .line 142
    :try_start_4
    iget-object v4, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    if-eqz v4, :cond_3

    .line 149
    .line 150
    iget-object v4, v0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 151
    .line 152
    move-object/from16 v20, v6

    .line 153
    .line 154
    const-wide/16 v5, 0x2000

    .line 155
    .line 156
    :try_start_5
    invoke-virtual {v4, v11, v5, v6, v10}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    const/4 v5, -0x1

    .line 161
    if-eq v4, v5, :cond_2

    .line 162
    .line 163
    new-instance v5, Lcom/android/server/uri/GrantUri;

    .line 164
    .line 165
    if-eqz v13, :cond_1

    .line 166
    .line 167
    const/16 v14, 0x80

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_1
    const/4 v14, 0x0

    .line 171
    :goto_2
    invoke-direct {v5, v8, v14, v12}, Lcom/android/server/uri/GrantUri;-><init>(IILandroid/net/Uri;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v9, v11, v4, v5}, Lcom/android/server/uri/UriGrantsManagerService;->findOrCreateUriPermissionLocked(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    invoke-virtual {v5, v15, v1, v2}, Lcom/android/server/uri/UriPermission;->initPersistedModes(IJ)V

    .line 179
    .line 180
    .line 181
    iget-object v9, v0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 182
    .line 183
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    .line 184
    .line 185
    .line 186
    move-result v12

    .line 187
    iget-object v1, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 188
    .line 189
    iget v13, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 190
    .line 191
    const/4 v15, 0x1

    .line 192
    const/4 v11, 0x0

    .line 193
    const/4 v14, 0x0

    .line 194
    invoke-virtual/range {v9 .. v15}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZZ)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 195
    .line 196
    .line 197
    goto :goto_9

    .line 198
    :catchall_0
    move-exception v0

    .line 199
    :goto_3
    move-object/from16 v5, v20

    .line 200
    .line 201
    goto/16 :goto_13

    .line 202
    .line 203
    :catch_0
    move-exception v0

    .line 204
    :goto_4
    move-object/from16 v1, v16

    .line 205
    .line 206
    move-object/from16 v2, v17

    .line 207
    .line 208
    :goto_5
    move-object/from16 v5, v20

    .line 209
    .line 210
    goto/16 :goto_10

    .line 211
    .line 212
    :catch_1
    move-exception v0

    .line 213
    :goto_6
    move-object/from16 v1, v16

    .line 214
    .line 215
    move-object/from16 v2, v17

    .line 216
    .line 217
    :goto_7
    move-object/from16 v5, v20

    .line 218
    .line 219
    goto/16 :goto_12

    .line 220
    .line 221
    :catch_2
    :goto_8
    move-object/from16 v5, v20

    .line 222
    .line 223
    goto/16 :goto_11

    .line 224
    .line 225
    :cond_2
    :goto_9
    move-object/from16 v2, v17

    .line 226
    .line 227
    goto/16 :goto_e

    .line 228
    .line 229
    :catchall_1
    move-exception v0

    .line 230
    move-object/from16 v20, v6

    .line 231
    .line 232
    goto :goto_3

    .line 233
    :catch_3
    move-exception v0

    .line 234
    move-object/from16 v20, v6

    .line 235
    .line 236
    goto :goto_4

    .line 237
    :catch_4
    move-exception v0

    .line 238
    move-object/from16 v20, v6

    .line 239
    .line 240
    goto :goto_6

    .line 241
    :catch_5
    move-object/from16 v20, v6

    .line 242
    .line 243
    goto :goto_8

    .line 244
    :cond_3
    move-object/from16 v20, v6

    .line 245
    .line 246
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .line 250
    .line 251
    const-string v2, "Persisted grant for "

    .line 252
    .line 253
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    const-string v2, " had source "

    .line 260
    .line 261
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string v2, " but instead found "

    .line 268
    .line 269
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 279
    move-object/from16 v2, v17

    .line 280
    .line 281
    :try_start_7
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 282
    .line 283
    .line 284
    goto :goto_e

    .line 285
    :catch_6
    move-exception v0

    .line 286
    :goto_a
    move-object/from16 v1, v16

    .line 287
    .line 288
    goto :goto_5

    .line 289
    :catch_7
    move-exception v0

    .line 290
    :goto_b
    move-object/from16 v1, v16

    .line 291
    .line 292
    goto :goto_7

    .line 293
    :catch_8
    move-exception v0

    .line 294
    :goto_c
    move-object/from16 v2, v17

    .line 295
    .line 296
    goto :goto_a

    .line 297
    :catch_9
    move-exception v0

    .line 298
    :goto_d
    move-object/from16 v2, v17

    .line 299
    .line 300
    goto :goto_b

    .line 301
    :catch_a
    move-exception v0

    .line 302
    move-object/from16 v20, v6

    .line 303
    .line 304
    goto :goto_c

    .line 305
    :catch_b
    move-exception v0

    .line 306
    move-object/from16 v20, v6

    .line 307
    .line 308
    goto :goto_d

    .line 309
    :catch_c
    move-exception v0

    .line 310
    move-object/from16 v16, v1

    .line 311
    .line 312
    move-object/from16 v20, v6

    .line 313
    .line 314
    goto :goto_5

    .line 315
    :catch_d
    move-exception v0

    .line 316
    move-object/from16 v16, v1

    .line 317
    .line 318
    move-object/from16 v20, v6

    .line 319
    .line 320
    goto :goto_7

    .line 321
    :cond_4
    move-object/from16 v16, v1

    .line 322
    .line 323
    move-wide/from16 v18, v3

    .line 324
    .line 325
    move-object/from16 v20, v6

    .line 326
    .line 327
    :goto_e
    move-object/from16 v1, v16

    .line 328
    .line 329
    move-wide/from16 v3, v18

    .line 330
    .line 331
    move-object/from16 v6, v20

    .line 332
    .line 333
    const/4 v5, 0x0

    .line 334
    goto/16 :goto_0

    .line 335
    .line 336
    :cond_5
    move-object/from16 v20, v6

    .line 337
    .line 338
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 339
    .line 340
    .line 341
    goto :goto_14

    .line 342
    :catchall_2
    move-exception v0

    .line 343
    const/4 v5, 0x0

    .line 344
    goto :goto_13

    .line 345
    :catch_e
    move-exception v0

    .line 346
    move-object/from16 v16, v1

    .line 347
    .line 348
    const/4 v5, 0x0

    .line 349
    goto :goto_10

    .line 350
    :catch_f
    move-exception v0

    .line 351
    move-object/from16 v16, v1

    .line 352
    .line 353
    :goto_f
    const/4 v5, 0x0

    .line 354
    goto :goto_12

    .line 355
    :catch_10
    const/4 v5, 0x0

    .line 356
    goto :goto_11

    .line 357
    :goto_10
    :try_start_8
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 358
    .line 359
    .line 360
    :goto_11
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 361
    .line 362
    .line 363
    goto :goto_14

    .line 364
    :catchall_3
    move-exception v0

    .line 365
    goto :goto_13

    .line 366
    :catch_11
    move-exception v0

    .line 367
    goto :goto_f

    .line 368
    :goto_12
    :try_start_9
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 369
    .line 370
    .line 371
    goto :goto_11

    .line 372
    :goto_13
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 373
    .line 374
    .line 375
    throw v0

    .line 376
    :goto_14
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/android/server/uri/UriGrantsManagerService;->TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/IUriGrantsManager$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mUriPermissionHistory:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v0, Lcom/android/server/uri/UriGrantsManagerService$H;

    .line 26
    .line 27
    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-direct {v0, p0, v1}, Lcom/android/server/uri/UriGrantsManagerService$H;-><init>(Lcom/android/server/uri/UriGrantsManagerService;Landroid/os/Looper;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mH:Lcom/android/server/uri/UriGrantsManagerService$H;

    .line 39
    .line 40
    new-instance v0, Ljava/io/File;

    .line 41
    .line 42
    const-string/jumbo v1, "urigrants.xml"

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance p1, Landroid/util/AtomicFile;

    .line 49
    .line 50
    if-eqz p2, :cond_0

    .line 51
    .line 52
    invoke-direct {p1, v0, p2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-direct {p1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    iput-object p1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    .line 60
    .line 61
    return-void
.end method

.method public static createForTest(Ljava/io/File;)Lcom/android/server/uri/UriGrantsManagerService;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/uri/UriGrantsManagerService$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/server/uri/UriGrantsManagerService;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-class p0, Landroid/app/ActivityManagerInternal;

    .line 8
    .line 9
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Landroid/app/ActivityManagerInternal;

    .line 14
    .line 15
    iput-object p0, v0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 16
    .line 17
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    .line 18
    .line 19
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    .line 24
    .line 25
    iput-object p0, v0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 26
    .line 27
    return-object v0
.end method

.method public static enforceNotIsolatedCaller(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->isIsolated(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 13
    .line 14
    const-string v1, "Isolated process not allowed to call "

    .line 15
    .line 16
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method


# virtual methods
.method public final addToHistoryLocked(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mUriPermissionHistory:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x7f

    .line 8
    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mUriPermissionHistory:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mUriPermissionHistory:Ljava/util/ArrayList;

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    sget-object v1, Lcom/android/server/uri/UriGrantsManagerService;->TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 25
    .line 26
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ": "

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public checkComponentPermission(Ljava/lang/String;IIZ)I
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final checkContentUriPermissionFullUnlocked(Lcom/android/server/uri/GrantUri;II)Z
    .locals 4

    .line 1
    if-ltz p2, :cond_5

    .line 2
    .line 3
    invoke-static {p3}, Landroid/content/Intent;->isAccessUriMode(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "content"

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_4

    .line 22
    .line 23
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/16 v1, 0x3e8

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eq v0, v1, :cond_3

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget v1, p1, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    .line 42
    .line 43
    const/high16 v3, 0x10000000

    .line 44
    .line 45
    invoke-virtual {p0, v1, v3, p2, v0}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(IIILjava/lang/String;)Landroid/content/pm/ProviderInfo;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    const-string p0, "UriGrantsManagerService"

    .line 52
    .line 53
    new-instance p2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string p3, "No content provider found for content URI permission check: "

    .line 56
    .line 57
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    const/4 p0, 0x0

    .line 77
    return p0

    .line 78
    :cond_1
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    return v2

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    .line 86
    .line 87
    monitor-enter v0

    .line 88
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUriPermissionLocked(Lcom/android/server/uri/GrantUri;II)Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    monitor-exit v0

    .line 93
    return p0

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    throw p0

    .line 97
    :cond_3
    :goto_0
    return v2

    .line 98
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 99
    .line 100
    new-instance p2, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string p3, "The URI must be a content URI and the mode flags must be at least read and/or write for the content URI permission check of "

    .line 103
    .line 104
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p0

    .line 124
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 125
    .line 126
    new-instance p2, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    const-string p3, "Uid must be positive for the content URI permission check of "

    .line 129
    .line 130
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget-object p1, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 134
    .line 135
    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p0
.end method

.method public final checkGrantUriPermissionFromIntentUnlocked(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;ILjava/lang/Integer;)Lcom/android/server/uri/NeededUriGrants;
    .locals 18

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move/from16 v10, p1

    .line 4
    .line 5
    move-object/from16 v11, p2

    .line 6
    .line 7
    move-object/from16 v1, p3

    .line 8
    .line 9
    move/from16 v12, p4

    .line 10
    .line 11
    move-object/from16 v7, p5

    .line 12
    .line 13
    move-object/from16 v13, p7

    .line 14
    .line 15
    if-eqz v11, :cond_11

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    return-object v2

    .line 21
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getContentUserHint()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v3, -0x2

    .line 26
    if-ne v0, v3, :cond_1

    .line 27
    .line 28
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    :cond_1
    move v14, v0

    .line 33
    invoke-static {}, Landroid/security/Flags;->contentUriPermissionApis()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    const-string v3, "UriGrantsManagerService"

    .line 40
    .line 41
    const-string v4, "android.intent.extra.STREAM"

    .line 42
    .line 43
    :try_start_0
    const-class v0, Landroid/net/Uri;

    .line 44
    .line 45
    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroid/net/Uri;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    invoke-static {v14, v12, v0}, Lcom/android/server/uri/GrantUri;->resolve(IILandroid/net/Uri;)Lcom/android/server/uri/GrantUri;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v9, v13, v0, v10}, Lcom/android/server/uri/UriGrantsManagerService;->enforceRequireContentUriPermissionFromCaller(Ljava/lang/Integer;Lcom/android/server/uri/GrantUri;I)V
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v6, "Failed to unparcel an URI in EXTRA_STREAM, skipping requireContentUriPermissionFromCaller: "

    .line 65
    .line 66
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    :cond_2
    :goto_0
    :try_start_1
    const-class v0, Landroid/net/Uri;

    .line 80
    .line 81
    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    add-int/lit8 v4, v4, -0x1

    .line 92
    .line 93
    :goto_1
    if-ltz v4, :cond_3

    .line 94
    .line 95
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    check-cast v5, Landroid/net/Uri;

    .line 100
    .line 101
    invoke-static {v14, v12, v5}, Lcom/android/server/uri/GrantUri;->resolve(IILandroid/net/Uri;)Lcom/android/server/uri/GrantUri;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-virtual {v9, v13, v5, v10}, Lcom/android/server/uri/UriGrantsManagerService;->enforceRequireContentUriPermissionFromCaller(Ljava/lang/Integer;Lcom/android/server/uri/GrantUri;I)V
    :try_end_1
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_1

    .line 106
    .line 107
    .line 108
    add-int/lit8 v4, v4, -0x1

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :catch_1
    move-exception v0

    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v5, "Failed to unparcel an ArrayList of URIs in EXTRA_STREAM, skipping requireContentUriPermissionFromCaller: "

    .line 115
    .line 116
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    :cond_3
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    .line 134
    .line 135
    .line 136
    move-result-object v15

    .line 137
    if-nez v0, :cond_4

    .line 138
    .line 139
    if-nez v15, :cond_4

    .line 140
    .line 141
    return-object v2

    .line 142
    :cond_4
    if-eqz v7, :cond_6

    .line 143
    .line 144
    iget v1, v7, Lcom/android/server/uri/NeededUriGrants;->targetUid:I

    .line 145
    .line 146
    move/from16 v8, p6

    .line 147
    .line 148
    :cond_5
    move v6, v1

    .line 149
    goto :goto_2

    .line 150
    :cond_6
    iget-object v1, v9, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 151
    .line 152
    const-wide/32 v3, 0x10000000

    .line 153
    .line 154
    .line 155
    move/from16 v8, p6

    .line 156
    .line 157
    invoke-virtual {v1, v11, v3, v4, v8}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-gez v1, :cond_5

    .line 162
    .line 163
    return-object v2

    .line 164
    :goto_2
    if-eqz v0, :cond_9

    .line 165
    .line 166
    invoke-static {v14, v12, v0}, Lcom/android/server/uri/GrantUri;->resolve(IILandroid/net/Uri;)Lcom/android/server/uri/GrantUri;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-static {}, Landroid/security/Flags;->contentUriPermissionApis()Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-eqz v1, :cond_7

    .line 175
    .line 176
    invoke-virtual {v9, v13, v0, v10}, Lcom/android/server/uri/UriGrantsManagerService;->enforceRequireContentUriPermissionFromCaller(Ljava/lang/Integer;Lcom/android/server/uri/GrantUri;I)V

    .line 177
    .line 178
    .line 179
    :cond_7
    move-object/from16 v1, p0

    .line 180
    .line 181
    move/from16 v2, p1

    .line 182
    .line 183
    move-object/from16 v3, p2

    .line 184
    .line 185
    move-object v4, v0

    .line 186
    move/from16 v5, p4

    .line 187
    .line 188
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    if-lez v6, :cond_9

    .line 193
    .line 194
    if-nez v7, :cond_8

    .line 195
    .line 196
    new-instance v1, Lcom/android/server/uri/NeededUriGrants;

    .line 197
    .line 198
    invoke-direct {v1, v6, v12, v11}, Lcom/android/server/uri/NeededUriGrants;-><init>(IILjava/lang/String;)V

    .line 199
    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_8
    move-object v1, v7

    .line 203
    :goto_3
    iget-object v2, v1, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    .line 204
    .line 205
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-object v7, v1

    .line 209
    :cond_9
    if-eqz v15, :cond_10

    .line 210
    .line 211
    const/4 v0, 0x0

    .line 212
    move/from16 v16, v6

    .line 213
    .line 214
    move-object/from16 v17, v7

    .line 215
    .line 216
    :goto_4
    invoke-virtual {v15}, Landroid/content/ClipData;->getItemCount()I

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    if-ge v0, v1, :cond_f

    .line 221
    .line 222
    invoke-virtual {v15, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    if-eqz v1, :cond_d

    .line 231
    .line 232
    invoke-static {v14, v12, v1}, Lcom/android/server/uri/GrantUri;->resolve(IILandroid/net/Uri;)Lcom/android/server/uri/GrantUri;

    .line 233
    .line 234
    .line 235
    move-result-object v7

    .line 236
    invoke-static {}, Landroid/security/Flags;->contentUriPermissionApis()Z

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    if-eqz v1, :cond_a

    .line 241
    .line 242
    invoke-virtual {v9, v13, v7, v10}, Lcom/android/server/uri/UriGrantsManagerService;->enforceRequireContentUriPermissionFromCaller(Ljava/lang/Integer;Lcom/android/server/uri/GrantUri;I)V

    .line 243
    .line 244
    .line 245
    :cond_a
    move-object/from16 v1, p0

    .line 246
    .line 247
    move/from16 v2, p1

    .line 248
    .line 249
    move-object/from16 v3, p2

    .line 250
    .line 251
    move-object v4, v7

    .line 252
    move/from16 v5, p4

    .line 253
    .line 254
    move/from16 v6, v16

    .line 255
    .line 256
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    if-lez v1, :cond_c

    .line 261
    .line 262
    if-nez v17, :cond_b

    .line 263
    .line 264
    new-instance v2, Lcom/android/server/uri/NeededUriGrants;

    .line 265
    .line 266
    invoke-direct {v2, v1, v12, v11}, Lcom/android/server/uri/NeededUriGrants;-><init>(IILjava/lang/String;)V

    .line 267
    .line 268
    .line 269
    goto :goto_5

    .line 270
    :cond_b
    move-object/from16 v2, v17

    .line 271
    .line 272
    :goto_5
    iget-object v3, v2, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    .line 273
    .line 274
    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-object/from16 v17, v2

    .line 278
    .line 279
    :cond_c
    move/from16 v16, v1

    .line 280
    .line 281
    goto :goto_6

    .line 282
    :cond_d
    invoke-virtual {v15, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    if-eqz v4, :cond_e

    .line 291
    .line 292
    move-object/from16 v1, p0

    .line 293
    .line 294
    move/from16 v2, p1

    .line 295
    .line 296
    move-object/from16 v3, p2

    .line 297
    .line 298
    move/from16 v5, p4

    .line 299
    .line 300
    move-object/from16 v6, v17

    .line 301
    .line 302
    move/from16 v7, p6

    .line 303
    .line 304
    move-object/from16 v8, p7

    .line 305
    .line 306
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionFromIntentUnlocked(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;ILjava/lang/Integer;)Lcom/android/server/uri/NeededUriGrants;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    if-eqz v1, :cond_e

    .line 311
    .line 312
    move-object/from16 v17, v1

    .line 313
    .line 314
    :cond_e
    :goto_6
    add-int/lit8 v0, v0, 0x1

    .line 315
    .line 316
    move/from16 v8, p6

    .line 317
    .line 318
    goto :goto_4

    .line 319
    :cond_f
    move-object/from16 v7, v17

    .line 320
    .line 321
    :cond_10
    return-object v7

    .line 322
    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    .line 323
    .line 324
    const-string/jumbo v1, "targetPkg"

    .line 325
    .line 326
    .line 327
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    throw v0
.end method

.method public final checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    move-object/from16 v9, p3

    .line 8
    .line 9
    move/from16 v10, p4

    .line 10
    .line 11
    invoke-static/range {p4 .. p4}, Landroid/content/Intent;->isAccessUriMode(I)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v11, 0x0

    .line 16
    const/4 v12, 0x1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    :goto_0
    move v1, v11

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object v1, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "content"

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move v1, v12

    .line 37
    :goto_1
    const/4 v13, -0x1

    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    return v13

    .line 41
    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    iget-object v2, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v14

    .line 51
    const/16 v2, 0x3e8

    .line 52
    .line 53
    if-eq v1, v2, :cond_3

    .line 54
    .line 55
    if-nez v1, :cond_6

    .line 56
    .line 57
    :cond_3
    const-string v1, "com.android.settings.files"

    .line 58
    .line 59
    iget-object v2, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 60
    .line 61
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_6

    .line 70
    .line 71
    const-string v1, "com.android.settings.module_licenses"

    .line 72
    .line 73
    iget-object v2, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 74
    .line 75
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_4

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_4
    iget-object v1, v0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 87
    .line 88
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    check-cast v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 93
    .line 94
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    const-wide/16 v4, 0x80

    .line 101
    .line 102
    move/from16 v3, p1

    .line 103
    .line 104
    move-object v6, v14

    .line 105
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->resolveContentProvider(IIJLjava/lang/String;)Landroid/content/pm/ProviderInfo;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    if-eqz v1, :cond_5

    .line 110
    .line 111
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 112
    .line 113
    if-eqz v1, :cond_5

    .line 114
    .line 115
    const-string v2, "com.samsung.android.exempt.GRANT_URI_PERMISSION"

    .line 116
    .line 117
    invoke-virtual {v1, v2, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_5

    .line 122
    .line 123
    const-string v1, "UriGrantsManagerService"

    .line 124
    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string v3, "Requested grant to "

    .line 128
    .line 129
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_5
    const-string v0, "UriGrantsManagerService"

    .line 144
    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string v2, "For security reasons, the system cannot issue a Uri permission grant to "

    .line 148
    .line 149
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v2, "; use startActivityAsCaller() instead"

    .line 156
    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    return v13

    .line 168
    :cond_6
    :goto_2
    iget v1, v9, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    .line 169
    .line 170
    const/high16 v2, 0x10000000

    .line 171
    .line 172
    invoke-virtual {v0, v1, v2, v7, v14}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(IIILjava/lang/String;)Landroid/content/pm/ProviderInfo;

    .line 173
    .line 174
    .line 175
    move-result-object v14

    .line 176
    if-nez v14, :cond_7

    .line 177
    .line 178
    const-string v0, "UriGrantsManagerService"

    .line 179
    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    const-string v2, "No content provider found for permission check: "

    .line 183
    .line 184
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    iget-object v2, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 188
    .line 189
    invoke-virtual {v2}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    return v13

    .line 204
    :cond_7
    if-gez p5, :cond_9

    .line 205
    .line 206
    if-eqz v8, :cond_9

    .line 207
    .line 208
    iget-object v1, v0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 209
    .line 210
    const-wide/32 v2, 0x10000000

    .line 211
    .line 212
    .line 213
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    invoke-virtual {v1, v8, v2, v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-gez v1, :cond_8

    .line 222
    .line 223
    return v13

    .line 224
    :cond_8
    move v8, v1

    .line 225
    goto :goto_3

    .line 226
    :cond_9
    move/from16 v8, p5

    .line 227
    .line 228
    :goto_3
    if-ltz v8, :cond_a

    .line 229
    .line 230
    invoke-virtual {v0, v14, v9, v8, v10}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    if-eqz v1, :cond_10

    .line 235
    .line 236
    :goto_4
    move v1, v12

    .line 237
    goto :goto_7

    .line 238
    :cond_a
    iget-boolean v1, v14, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 239
    .line 240
    and-int/lit8 v2, v10, 0x1

    .line 241
    .line 242
    if-eqz v2, :cond_b

    .line 243
    .line 244
    iget-object v3, v14, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 245
    .line 246
    if-eqz v3, :cond_b

    .line 247
    .line 248
    move v1, v11

    .line 249
    :cond_b
    and-int/lit8 v3, v10, 0x2

    .line 250
    .line 251
    if-eqz v3, :cond_c

    .line 252
    .line 253
    iget-object v4, v14, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 254
    .line 255
    if-eqz v4, :cond_c

    .line 256
    .line 257
    move v1, v11

    .line 258
    :cond_c
    iget-object v4, v14, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 259
    .line 260
    if-eqz v4, :cond_f

    .line 261
    .line 262
    array-length v4, v4

    .line 263
    move v5, v11

    .line 264
    :goto_5
    if-ge v5, v4, :cond_f

    .line 265
    .line 266
    iget-object v6, v14, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 267
    .line 268
    aget-object v6, v6, v5

    .line 269
    .line 270
    if-eqz v6, :cond_e

    .line 271
    .line 272
    iget-object v15, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 273
    .line 274
    invoke-virtual {v15}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v15

    .line 278
    invoke-virtual {v6, v15}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    .line 279
    .line 280
    .line 281
    move-result v6

    .line 282
    if-eqz v6, :cond_e

    .line 283
    .line 284
    if-eqz v2, :cond_d

    .line 285
    .line 286
    iget-object v2, v14, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 287
    .line 288
    aget-object v2, v2, v5

    .line 289
    .line 290
    invoke-virtual {v2}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    if-eqz v2, :cond_d

    .line 295
    .line 296
    move v1, v11

    .line 297
    :cond_d
    if-eqz v3, :cond_f

    .line 298
    .line 299
    iget-object v2, v14, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 300
    .line 301
    aget-object v2, v2, v5

    .line 302
    .line 303
    invoke-virtual {v2}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    if-eqz v2, :cond_f

    .line 308
    .line 309
    move v1, v11

    .line 310
    goto :goto_6

    .line 311
    :cond_e
    add-int/lit8 v5, v5, 0x1

    .line 312
    .line 313
    goto :goto_5

    .line 314
    :cond_f
    :goto_6
    if-eqz v1, :cond_10

    .line 315
    .line 316
    goto :goto_4

    .line 317
    :cond_10
    move v1, v11

    .line 318
    :goto_7
    iget-boolean v2, v14, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    .line 319
    .line 320
    if-eqz v2, :cond_11

    .line 321
    .line 322
    move v1, v11

    .line 323
    :cond_11
    and-int/lit16 v2, v10, 0xc0

    .line 324
    .line 325
    if-nez v2, :cond_12

    .line 326
    .line 327
    move v15, v12

    .line 328
    goto :goto_8

    .line 329
    :cond_12
    move v15, v11

    .line 330
    :goto_8
    if-eqz v15, :cond_13

    .line 331
    .line 332
    if-eqz v1, :cond_13

    .line 333
    .line 334
    iget-object v0, v0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 335
    .line 336
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    .line 337
    .line 338
    .line 339
    move-result v2

    .line 340
    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    .line 341
    .line 342
    .line 343
    move-result v4

    .line 344
    iget-object v1, v14, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 345
    .line 346
    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 347
    .line 348
    move-object v1, v0

    .line 349
    check-cast v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 350
    .line 351
    const/4 v3, 0x0

    .line 352
    const/4 v6, 0x0

    .line 353
    const/4 v7, 0x0

    .line 354
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->grantImplicitAccess(ILandroid/content/Intent;IIZZ)V

    .line 355
    .line 356
    .line 357
    return v13

    .line 358
    :cond_13
    if-ltz v8, :cond_14

    .line 359
    .line 360
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    .line 361
    .line 362
    .line 363
    move-result v1

    .line 364
    iget v2, v9, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    .line 365
    .line 366
    if-eq v1, v2, :cond_14

    .line 367
    .line 368
    const/4 v6, 0x0

    .line 369
    move-object/from16 v1, p0

    .line 370
    .line 371
    move-object v2, v14

    .line 372
    move-object/from16 v3, p3

    .line 373
    .line 374
    move/from16 v4, p1

    .line 375
    .line 376
    move/from16 v5, p4

    .line 377
    .line 378
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsInternalUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;IIZ)Z

    .line 379
    .line 380
    .line 381
    move-result v1

    .line 382
    if-eqz v1, :cond_14

    .line 383
    .line 384
    move v1, v12

    .line 385
    goto :goto_9

    .line 386
    :cond_14
    move v1, v11

    .line 387
    :goto_9
    iget-boolean v2, v14, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 388
    .line 389
    iget-object v3, v14, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 390
    .line 391
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    move-result v3

    .line 395
    if-nez v3, :cond_16

    .line 396
    .line 397
    iget-object v2, v14, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 398
    .line 399
    array-length v2, v2

    .line 400
    move v3, v11

    .line 401
    :goto_a
    if-ge v3, v2, :cond_17

    .line 402
    .line 403
    iget-object v4, v14, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 404
    .line 405
    aget-object v4, v4, v3

    .line 406
    .line 407
    if-eqz v4, :cond_15

    .line 408
    .line 409
    iget-object v5, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 410
    .line 411
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v5

    .line 415
    invoke-virtual {v4, v5}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    .line 416
    .line 417
    .line 418
    move-result v4

    .line 419
    if-eqz v4, :cond_15

    .line 420
    .line 421
    move v11, v12

    .line 422
    goto :goto_b

    .line 423
    :cond_15
    add-int/lit8 v3, v3, 0x1

    .line 424
    .line 425
    goto :goto_a

    .line 426
    :cond_16
    move v11, v2

    .line 427
    :cond_17
    :goto_b
    if-nez v11, :cond_1a

    .line 428
    .line 429
    if-eqz v1, :cond_19

    .line 430
    .line 431
    if-eqz v15, :cond_18

    .line 432
    .line 433
    goto :goto_c

    .line 434
    :cond_18
    new-instance v0, Ljava/lang/SecurityException;

    .line 435
    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    .line 437
    .line 438
    const-string v2, "Provider "

    .line 439
    .line 440
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    iget-object v2, v14, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 444
    .line 445
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    const-string v2, "/"

    .line 449
    .line 450
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    iget-object v2, v14, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    .line 454
    .line 455
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    const-string v2, " does not allow granting of advanced Uri permissions (uri "

    .line 459
    .line 460
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    const-string v2, ")"

    .line 467
    .line 468
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    throw v0

    .line 479
    :cond_19
    new-instance v0, Ljava/lang/SecurityException;

    .line 480
    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    .line 482
    .line 483
    const-string v2, "Provider "

    .line 484
    .line 485
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    iget-object v2, v14, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 489
    .line 490
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    const-string v2, "/"

    .line 494
    .line 495
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    iget-object v2, v14, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    .line 499
    .line 500
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    const-string v2, " does not allow granting of Uri permissions (uri "

    .line 504
    .line 505
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    const-string v2, ")"

    .line 512
    .line 513
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v1

    .line 520
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    throw v0

    .line 524
    :cond_1a
    :goto_c
    invoke-virtual {v0, v14, v9, v7, v10}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    .line 525
    .line 526
    .line 527
    move-result v1

    .line 528
    if-nez v1, :cond_1c

    .line 529
    .line 530
    iget-object v1, v0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    .line 531
    .line 532
    monitor-enter v1

    .line 533
    :try_start_0
    invoke-virtual {v0, v9, v7, v10}, Lcom/android/server/uri/UriGrantsManagerService;->checkUriPermissionLocked(Lcom/android/server/uri/GrantUri;II)Z

    .line 534
    .line 535
    .line 536
    move-result v0

    .line 537
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    if-nez v0, :cond_1c

    .line 539
    .line 540
    const-string v0, "android.permission.MANAGE_DOCUMENTS"

    .line 541
    .line 542
    iget-object v1, v14, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 543
    .line 544
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 545
    .line 546
    .line 547
    move-result v0

    .line 548
    if-eqz v0, :cond_1b

    .line 549
    .line 550
    new-instance v0, Ljava/lang/SecurityException;

    .line 551
    .line 552
    new-instance v1, Ljava/lang/StringBuilder;

    .line 553
    .line 554
    const-string v2, "UID "

    .line 555
    .line 556
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    const-string v2, " does not have permission to "

    .line 563
    .line 564
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    const-string v2, "; you could obtain access using ACTION_OPEN_DOCUMENT or related APIs"

    .line 571
    .line 572
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v1

    .line 579
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    throw v0

    .line 583
    :cond_1b
    new-instance v0, Ljava/lang/SecurityException;

    .line 584
    .line 585
    new-instance v1, Ljava/lang/StringBuilder;

    .line 586
    .line 587
    const-string v2, "UID "

    .line 588
    .line 589
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    const-string v2, " does not have permission to "

    .line 596
    .line 597
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v1

    .line 607
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    throw v0

    .line 611
    :catchall_0
    move-exception v0

    .line 612
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 613
    throw v0

    .line 614
    :cond_1c
    return v8
.end method

.method public final checkGrantUriPermission_ignoreNonSystem(ILjava/lang/String;Landroid/net/Uri;II)I
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-eq v0, v1, :cond_2

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 14
    .line 15
    const/4 v3, -0x1

    .line 16
    invoke-virtual {p0, v2, v0, v3, v1}, Lcom/android/server/uri/UriGrantsManagerService;->checkComponentPermission(Ljava/lang/String;IIZ)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    return v3

    .line 24
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    :try_start_0
    new-instance v5, Lcom/android/server/uri/GrantUri;

    .line 29
    .line 30
    invoke-direct {v5, p5, p4, p3}, Lcom/android/server/uri/GrantUri;-><init>(IILandroid/net/Uri;)V

    .line 31
    .line 32
    .line 33
    const/4 v7, -0x1

    .line 34
    move-object v2, p0

    .line 35
    move v3, p1

    .line 36
    move-object v4, p2

    .line 37
    move v6, p4

    .line 38
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    .line 39
    .line 40
    .line 41
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 43
    .line 44
    .line 45
    return p0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    .line 49
    .line 50
    throw p0
.end method

.method public final checkHoldingPermissionsInternalUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;IIZ)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    iget-object v5, v0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-static {v5}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    if-nez v5, :cond_13

    .line 18
    .line 19
    iget-object v5, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 20
    .line 21
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 22
    .line 23
    const/4 v6, 0x1

    .line 24
    if-ne v5, v3, :cond_0

    .line 25
    .line 26
    return v6

    .line 27
    :cond_0
    iget-boolean v5, v1, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 28
    .line 29
    const/4 v7, 0x0

    .line 30
    if-nez v5, :cond_1

    .line 31
    .line 32
    return v7

    .line 33
    :cond_1
    and-int/lit8 v5, v4, 0x1

    .line 34
    .line 35
    if-nez v5, :cond_2

    .line 36
    .line 37
    move v5, v6

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    move v5, v7

    .line 40
    :goto_0
    and-int/lit8 v8, v4, 0x2

    .line 41
    .line 42
    if-nez v8, :cond_3

    .line 43
    .line 44
    move v8, v6

    .line 45
    goto :goto_1

    .line 46
    :cond_3
    move v8, v7

    .line 47
    :goto_1
    if-nez v5, :cond_4

    .line 48
    .line 49
    iget-object v9, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 50
    .line 51
    if-eqz v9, :cond_4

    .line 52
    .line 53
    if-eqz p5, :cond_4

    .line 54
    .line 55
    invoke-virtual {v0, v9, v3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    if-nez v9, :cond_4

    .line 60
    .line 61
    move v5, v6

    .line 62
    :cond_4
    if-nez v8, :cond_5

    .line 63
    .line 64
    iget-object v9, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 65
    .line 66
    if-eqz v9, :cond_5

    .line 67
    .line 68
    if-eqz p5, :cond_5

    .line 69
    .line 70
    invoke-virtual {v0, v9, v3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    if-nez v9, :cond_5

    .line 75
    .line 76
    move v8, v6

    .line 77
    :cond_5
    iget-object v9, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 78
    .line 79
    if-nez v9, :cond_6

    .line 80
    .line 81
    move v9, v6

    .line 82
    goto :goto_2

    .line 83
    :cond_6
    move v9, v7

    .line 84
    :goto_2
    iget-object v10, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 85
    .line 86
    if-nez v10, :cond_7

    .line 87
    .line 88
    move v10, v6

    .line 89
    goto :goto_3

    .line 90
    :cond_7
    move v10, v7

    .line 91
    :goto_3
    iget-object v11, v1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 92
    .line 93
    if-eqz v11, :cond_d

    .line 94
    .line 95
    iget-object v12, v2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 96
    .line 97
    invoke-virtual {v12}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v12

    .line 101
    array-length v13, v11

    .line 102
    :cond_8
    :goto_4
    if-lez v13, :cond_d

    .line 103
    .line 104
    if-eqz v5, :cond_9

    .line 105
    .line 106
    if-nez v8, :cond_d

    .line 107
    .line 108
    :cond_9
    add-int/lit8 v13, v13, -0x1

    .line 109
    .line 110
    aget-object v14, v11, v13

    .line 111
    .line 112
    invoke-virtual {v14, v12}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v15

    .line 116
    if-eqz v15, :cond_8

    .line 117
    .line 118
    if-nez v5, :cond_b

    .line 119
    .line 120
    invoke-virtual {v14}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v15

    .line 124
    if-eqz v15, :cond_b

    .line 125
    .line 126
    if-eqz p5, :cond_a

    .line 127
    .line 128
    invoke-virtual {v0, v15, v3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    .line 129
    .line 130
    .line 131
    move-result v15

    .line 132
    if-nez v15, :cond_a

    .line 133
    .line 134
    move v5, v6

    .line 135
    goto :goto_5

    .line 136
    :cond_a
    move v9, v7

    .line 137
    :cond_b
    :goto_5
    if-nez v8, :cond_8

    .line 138
    .line 139
    invoke-virtual {v14}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v14

    .line 143
    if-eqz v14, :cond_8

    .line 144
    .line 145
    if-eqz p5, :cond_c

    .line 146
    .line 147
    invoke-virtual {v0, v14, v3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    .line 148
    .line 149
    .line 150
    move-result v14

    .line 151
    if-nez v14, :cond_c

    .line 152
    .line 153
    move v8, v6

    .line 154
    goto :goto_4

    .line 155
    :cond_c
    move v10, v7

    .line 156
    goto :goto_4

    .line 157
    :cond_d
    if-eqz v9, :cond_e

    .line 158
    .line 159
    move v5, v6

    .line 160
    :cond_e
    if-eqz v10, :cond_f

    .line 161
    .line 162
    move v8, v6

    .line 163
    :cond_f
    iget-boolean v9, v1, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    .line 164
    .line 165
    if-eqz v9, :cond_11

    .line 166
    .line 167
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 168
    .line 169
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 170
    .line 171
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 176
    .line 177
    .line 178
    move-result v9

    .line 179
    if-ne v1, v9, :cond_10

    .line 180
    .line 181
    iget-object v0, v0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 182
    .line 183
    iget-object v2, v2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 184
    .line 185
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/app/ActivityManagerInternal;->checkContentProviderUriPermission(Landroid/net/Uri;III)I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-nez v0, :cond_10

    .line 190
    .line 191
    goto :goto_6

    .line 192
    :cond_10
    move v0, v7

    .line 193
    goto :goto_7

    .line 194
    :cond_11
    :goto_6
    move v0, v6

    .line 195
    :goto_7
    if-eqz v5, :cond_12

    .line 196
    .line 197
    if-eqz v8, :cond_12

    .line 198
    .line 199
    if-eqz v0, :cond_12

    .line 200
    .line 201
    goto :goto_8

    .line 202
    :cond_12
    move v6, v7

    .line 203
    :goto_8
    return v6

    .line 204
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 205
    .line 206
    const-string v1, "Must never hold local mLock"

    .line 207
    .line 208
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    throw v0
.end method

.method public final checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z
    .locals 6

    .line 1
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p2, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 11
    .line 12
    const/4 v2, -0x1

    .line 13
    invoke-virtual {p0, v1, p3, v2, v0}, Lcom/android/server/uri/UriGrantsManagerService;->checkComponentPermission(Ljava/lang/String;IIZ)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return p0

    .line 21
    :cond_0
    const/4 v5, 0x1

    .line 22
    move-object v0, p0

    .line 23
    move-object v1, p1

    .line 24
    move-object v2, p2

    .line 25
    move v3, p3

    .line 26
    move v4, p4

    .line 27
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsInternalUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;IIZ)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method public checkUidPermission(Ljava/lang/String;I)I
    .locals 0

    .line 1
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    throw p0
.end method

.method public final checkUriPermissionLocked(Lcom/android/server/uri/GrantUri;II)Z
    .locals 9

    .line 1
    and-int/lit8 v0, p3, 0x40

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move v0, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v2

    .line 10
    :goto_0
    if-nez p2, :cond_1

    .line 11
    .line 12
    return v2

    .line 13
    :cond_1
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Landroid/util/ArrayMap;

    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    if-nez p0, :cond_2

    .line 23
    .line 24
    return p2

    .line 25
    :cond_2
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lcom/android/server/uri/UriPermission;

    .line 30
    .line 31
    const/4 v4, 0x2

    .line 32
    if-eqz v3, :cond_6

    .line 33
    .line 34
    and-int/lit8 v5, p3, 0x3

    .line 35
    .line 36
    iget v6, v3, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    .line 37
    .line 38
    and-int/2addr v6, v5

    .line 39
    if-ne v6, v5, :cond_3

    .line 40
    .line 41
    move v3, v1

    .line 42
    goto :goto_1

    .line 43
    :cond_3
    iget v6, v3, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    .line 44
    .line 45
    and-int/2addr v6, v5

    .line 46
    if-ne v6, v5, :cond_4

    .line 47
    .line 48
    move v3, v4

    .line 49
    goto :goto_1

    .line 50
    :cond_4
    iget v3, v3, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    .line 51
    .line 52
    and-int/2addr v3, v5

    .line 53
    if-ne v3, v5, :cond_5

    .line 54
    .line 55
    move v3, v2

    .line 56
    goto :goto_1

    .line 57
    :cond_5
    move v3, p2

    .line 58
    :goto_1
    if-lt v3, v0, :cond_6

    .line 59
    .line 60
    return v2

    .line 61
    :cond_6
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    move v5, p2

    .line 66
    :goto_2
    if-ge v5, v3, :cond_b

    .line 67
    .line 68
    invoke-virtual {p0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    check-cast v6, Lcom/android/server/uri/UriPermission;

    .line 73
    .line 74
    iget-object v7, v6, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    .line 75
    .line 76
    iget-boolean v8, v7, Lcom/android/server/uri/GrantUri;->prefix:Z

    .line 77
    .line 78
    if-eqz v8, :cond_a

    .line 79
    .line 80
    iget-object v8, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 81
    .line 82
    iget-object v7, v7, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 83
    .line 84
    invoke-virtual {v8, v7}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    if-eqz v7, :cond_a

    .line 89
    .line 90
    and-int/lit8 v7, p3, 0x3

    .line 91
    .line 92
    iget v8, v6, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    .line 93
    .line 94
    and-int/2addr v8, v7

    .line 95
    if-ne v8, v7, :cond_7

    .line 96
    .line 97
    move v6, v1

    .line 98
    goto :goto_3

    .line 99
    :cond_7
    iget v8, v6, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    .line 100
    .line 101
    and-int/2addr v8, v7

    .line 102
    if-ne v8, v7, :cond_8

    .line 103
    .line 104
    move v6, v4

    .line 105
    goto :goto_3

    .line 106
    :cond_8
    iget v6, v6, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    .line 107
    .line 108
    and-int/2addr v6, v7

    .line 109
    if-ne v6, v7, :cond_9

    .line 110
    .line 111
    move v6, v2

    .line 112
    goto :goto_3

    .line 113
    :cond_9
    move v6, p2

    .line 114
    :goto_3
    if-lt v6, v0, :cond_a

    .line 115
    .line 116
    return v2

    .line 117
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_b
    return p2
.end method

.method public final clearGrantedUriPermissions(Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 2
    .line 3
    const-string v1, "android.permission.CLEAR_APP_GRANTED_URI_PERMISSIONS"

    .line 4
    .line 5
    const-string v2, "clearGrantedUriPermissions"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    const/4 v1, 0x1

    .line 14
    :try_start_0
    invoke-virtual {p0, p1, v1, v1, p2}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionsForPackageLocked(Ljava/lang/String;ZZI)V

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method

.method public final enforceRequireContentUriPermissionFromCaller(Ljava/lang/Integer;Lcom/android/server/uri/GrantUri;I)V
    .locals 4

    .line 1
    if-eqz p1, :cond_8

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_8

    .line 8
    .line 9
    iget-object v0, p2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "content"

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_3

    .line 24
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isRequiredContentUriPermissionRead(I)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v1, 0x0

    .line 33
    const/4 v2, 0x1

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0, p2, p3, v2}, Lcom/android/server/uri/UriGrantsManagerService;->checkContentUriPermissionFullUnlocked(Lcom/android/server/uri/GrantUri;II)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move v0, v1

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    :goto_0
    move v0, v2

    .line 46
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-static {v3}, Landroid/content/pm/ActivityInfo;->isRequiredContentUriPermissionWrite(I)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    const/4 v3, 0x2

    .line 57
    invoke-virtual {p0, p2, p3, v3}, Lcom/android/server/uri/UriGrantsManagerService;->checkContentUriPermissionFullUnlocked(Lcom/android/server/uri/GrantUri;II)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-eqz p0, :cond_4

    .line 62
    .line 63
    :cond_3
    move v1, v2

    .line 64
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    const/4 p3, 0x3

    .line 69
    if-ne p0, p3, :cond_5

    .line 70
    .line 71
    if-nez v0, :cond_6

    .line 72
    .line 73
    if-eqz v1, :cond_7

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_5
    if-eqz v0, :cond_7

    .line 77
    .line 78
    if-eqz v1, :cond_7

    .line 79
    .line 80
    :cond_6
    :goto_2
    return-void

    .line 81
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    .line 82
    .line 83
    new-instance p3, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v0, "You can\'t launch this activity because you don\'t have the required "

    .line 86
    .line 87
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->requiredContentUriPermissionToShortString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string p1, " access to "

    .line 102
    .line 103
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget-object p1, p2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 107
    .line 108
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p0

    .line 119
    :cond_8
    :goto_3
    return-void
.end method

.method public final findOrCreateUriPermissionLocked(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/util/ArrayMap;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/google/android/collect/Maps;->newArrayMap()Landroid/util/ArrayMap;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {v0, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/server/uri/UriPermission;

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    new-instance v1, Lcom/android/server/uri/UriPermission;

    .line 29
    .line 30
    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/server/uri/UriPermission;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string p3, "+"

    .line 39
    .line 40
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget p3, v1, Lcom/android/server/uri/UriPermission;->targetUid:I

    .line 44
    .line 45
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p3, "<"

    .line 49
    .line 50
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p3, "> "

    .line 61
    .line 62
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object p3, v1, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    .line 66
    .line 67
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p3, "<-"

    .line 71
    .line 72
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/server/uri/UriGrantsManagerService;->addToHistoryLocked(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_1
    return-object v1
.end method

.method public final findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/util/ArrayMap;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/server/uri/UriPermission;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method

.method public final getGrantedUriPermissions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 2
    .line 3
    const-string v1, "android.permission.GET_APP_GRANTED_URI_PERMISSIONS"

    .line 4
    .line 5
    const-string v2, "getGrantedUriPermissions"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    move v4, v3

    .line 26
    :goto_0
    if-ge v4, v2, :cond_3

    .line 27
    .line 28
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    check-cast v5, Landroid/util/ArrayMap;

    .line 35
    .line 36
    move v6, v3

    .line 37
    :goto_1
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-ge v6, v7, :cond_2

    .line 42
    .line 43
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    check-cast v7, Lcom/android/server/uri/UriPermission;

    .line 48
    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    iget-object v8, v7, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    if-eqz v8, :cond_1

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_3

    .line 62
    :cond_0
    :goto_2
    iget v8, v7, Lcom/android/server/uri/UriPermission;->targetUserId:I

    .line 63
    .line 64
    if-ne v8, p2, :cond_1

    .line 65
    .line 66
    iget v8, v7, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    .line 67
    .line 68
    if-eqz v8, :cond_1

    .line 69
    .line 70
    new-instance v8, Landroid/app/GrantedUriPermission;

    .line 71
    .line 72
    iget-object v9, v7, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    .line 73
    .line 74
    iget-object v9, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 75
    .line 76
    iget-object v7, v7, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    .line 77
    .line 78
    invoke-direct {v8, v9, v7}, Landroid/app/GrantedUriPermission;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    .line 92
    .line 93
    invoke-direct {p0, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 94
    .line 95
    .line 96
    return-object p0

    .line 97
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    throw p0
.end method

.method public getLocalService()Lcom/android/server/uri/UriGrantsManagerInternal;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;-><init>(Lcom/android/server/uri/UriGrantsManagerService;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final getProviderInfo(IIILjava/lang/String;)Landroid/content/pm/ProviderInfo;
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2
    .line 3
    or-int/lit16 p2, p2, 0x800

    .line 4
    .line 5
    int-to-long v3, p2

    .line 6
    check-cast p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    move v1, p1

    .line 15
    move v2, p3

    .line 16
    move-object v5, p4

    .line 17
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->resolveContentProvider(IIJLjava/lang/String;)Landroid/content/pm/ProviderInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public final getUriPermissions(Ljava/lang/String;ZZ)Landroid/content/pm/ParceledListSlice;
    .locals 12

    .line 1
    const-string v0, "No permission grants found for "

    .line 2
    .line 3
    const-string v1, "getUriPermissions"

    .line 4
    .line 5
    invoke-static {v1}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v1, "packageName"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    .line 23
    .line 24
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 29
    .line 30
    const-wide/32 v4, 0xc0000

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, p1, v4, v5, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-ne v2, v1, :cond_8

    .line 38
    .line 39
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget-object v3, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    .line 44
    .line 45
    monitor-enter v3

    .line 46
    const/4 v4, 0x0

    .line 47
    if-eqz p2, :cond_3

    .line 48
    .line 49
    :try_start_0
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    check-cast p0, Landroid/util/ArrayMap;

    .line 56
    .line 57
    if-nez p0, :cond_0

    .line 58
    .line 59
    const-string p0, "UriGrantsManagerService"

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    goto/16 :goto_3

    .line 69
    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto/16 :goto_4

    .line 72
    .line 73
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-ge v4, p2, :cond_7

    .line 78
    .line 79
    invoke-virtual {p0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    check-cast p2, Lcom/android/server/uri/UriPermission;

    .line 84
    .line 85
    iget-object v0, p2, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_2

    .line 92
    .line 93
    if-eqz p3, :cond_1

    .line 94
    .line 95
    iget v0, p2, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    .line 96
    .line 97
    if-eqz v0, :cond_2

    .line 98
    .line 99
    :cond_1
    new-instance v0, Landroid/content/UriPermission;

    .line 100
    .line 101
    iget-object v1, p2, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    .line 102
    .line 103
    iget-object v1, v1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 104
    .line 105
    iget v5, p2, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    .line 106
    .line 107
    iget-wide v6, p2, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    .line 108
    .line 109
    invoke-direct {v0, v1, v5, v6, v7}, Landroid/content/UriPermission;-><init>(Landroid/net/Uri;IJ)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_3
    iget-object p2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 119
    .line 120
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    move v0, v4

    .line 125
    :goto_1
    if-ge v0, p2, :cond_7

    .line 126
    .line 127
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 128
    .line 129
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    check-cast v1, Landroid/util/ArrayMap;

    .line 134
    .line 135
    move v5, v4

    .line 136
    :goto_2
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    if-ge v5, v6, :cond_6

    .line 141
    .line 142
    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    check-cast v6, Lcom/android/server/uri/UriPermission;

    .line 147
    .line 148
    iget-object v7, v6, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    if-eqz v7, :cond_5

    .line 155
    .line 156
    if-eqz p3, :cond_4

    .line 157
    .line 158
    iget v7, v6, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    .line 159
    .line 160
    if-eqz v7, :cond_5

    .line 161
    .line 162
    :cond_4
    new-instance v7, Landroid/content/UriPermission;

    .line 163
    .line 164
    iget-object v8, v6, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    .line 165
    .line 166
    iget-object v8, v8, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 167
    .line 168
    iget v9, v6, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    .line 169
    .line 170
    iget-wide v10, v6, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    .line 171
    .line 172
    invoke-direct {v7, v8, v9, v10, v11}, Landroid/content/UriPermission;-><init>(Landroid/net/Uri;IJ)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_7
    :goto_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    .line 186
    .line 187
    invoke-direct {p0, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 188
    .line 189
    .line 190
    return-object p0

    .line 191
    :goto_4
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    throw p0

    .line 193
    :cond_8
    new-instance p0, Ljava/lang/SecurityException;

    .line 194
    .line 195
    const-string p2, "Package "

    .line 196
    .line 197
    const-string p3, " does not belong to calling UID "

    .line 198
    .line 199
    invoke-static {v1, p2, p1, p3}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw p0
.end method

.method public final grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string v6, "grantUriPermissionFromOwner"

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x2

    .line 16
    move v3, p7

    .line 17
    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result p7

    .line 21
    instance-of v0, p1, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    move-object v0, p1

    .line 26
    check-cast v0, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;->this$0:Lcom/android/server/uri/UriPermissionOwner;

    .line 29
    .line 30
    :goto_0
    move-object v6, v0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    goto :goto_0

    .line 34
    :goto_1
    if-eqz v6, :cond_6

    .line 35
    .line 36
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eq p2, p1, :cond_2

    .line 41
    .line 42
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-ne p1, v0, :cond_1

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 54
    .line 55
    const-string/jumbo p1, "nice try"

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0

    .line 62
    :cond_2
    :goto_2
    if-eqz p3, :cond_5

    .line 63
    .line 64
    if-eqz p4, :cond_4

    .line 65
    .line 66
    new-instance p1, Lcom/android/server/uri/GrantUri;

    .line 67
    .line 68
    invoke-direct {p1, p6, p5, p4}, Lcom/android/server/uri/GrantUri;-><init>(IILandroid/net/Uri;)V

    .line 69
    .line 70
    .line 71
    iget-object p4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 72
    .line 73
    const-wide/32 v0, 0x10000000

    .line 74
    .line 75
    .line 76
    invoke-virtual {p4, p3, v0, v1, p7}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    move-object v0, p0

    .line 81
    move v1, p2

    .line 82
    move-object v2, p3

    .line 83
    move-object v3, p1

    .line 84
    move v4, p5

    .line 85
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-gez v2, :cond_3

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_3
    move-object v1, p0

    .line 93
    move-object v3, p3

    .line 94
    move-object v4, p1

    .line 95
    move v5, p5

    .line 96
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUnchecked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;)V

    .line 97
    .line 98
    .line 99
    :goto_3
    return-void

    .line 100
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 101
    .line 102
    const-string/jumbo p1, "null uri"

    .line 103
    .line 104
    .line 105
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p0

    .line 109
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 110
    .line 111
    const-string/jumbo p1, "null target"

    .line 112
    .line 113
    .line 114
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p0

    .line 118
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 119
    .line 120
    new-instance p2, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string p3, "Unknown owner: "

    .line 123
    .line 124
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p0
.end method

.method public final grantUriPermissionUnchecked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;)V
    .locals 7

    .line 1
    invoke-static {p4}, Landroid/content/Intent;->isAccessUriMode(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v1, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    .line 15
    .line 16
    const/high16 v2, 0x10000000

    .line 17
    .line 18
    const/16 v3, 0x3e8

    .line 19
    .line 20
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(IIILjava/lang/String;)Landroid/content/pm/ProviderInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    const-string p0, "UriGrantsManagerService"

    .line 27
    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string p2, "No content provider found for grant: "

    .line 31
    .line 32
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3}, Lcom/android/server/uri/GrantUri;->toSafeString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    .line 51
    .line 52
    monitor-enter v1

    .line 53
    :try_start_0
    iget-object v2, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p0, v2, p2, p1, p3}, Lcom/android/server/uri/UriGrantsManagerService;->findOrCreateUriPermissionLocked(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 60
    and-int/lit8 p3, p4, 0x40

    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    const/4 v2, 0x1

    .line 64
    if-eqz p3, :cond_2

    .line 65
    .line 66
    move v3, v2

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    move v3, v1

    .line 69
    :goto_0
    and-int/lit8 v4, p4, 0x3

    .line 70
    .line 71
    if-eqz v3, :cond_3

    .line 72
    .line 73
    iget v3, p2, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    .line 74
    .line 75
    or-int/2addr v3, v4

    .line 76
    iput v3, p2, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    .line 77
    .line 78
    :cond_3
    if-nez p5, :cond_4

    .line 79
    .line 80
    iget p4, p2, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    .line 81
    .line 82
    or-int/2addr p4, v4

    .line 83
    iput p4, p2, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    .line 84
    .line 85
    goto/16 :goto_6

    .line 86
    .line 87
    :cond_4
    and-int/lit8 v3, p4, 0x1

    .line 88
    .line 89
    if-eqz v3, :cond_7

    .line 90
    .line 91
    iget-object v3, p2, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    .line 92
    .line 93
    if-nez v3, :cond_5

    .line 94
    .line 95
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    iput-object v3, p2, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    .line 100
    .line 101
    iget v3, p2, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    .line 102
    .line 103
    or-int/2addr v3, v2

    .line 104
    iput v3, p2, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    .line 105
    .line 106
    invoke-virtual {p2}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    .line 107
    .line 108
    .line 109
    :cond_5
    iget-object v3, p2, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    .line 110
    .line 111
    invoke-virtual {v3, p5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-eqz v3, :cond_7

    .line 116
    .line 117
    monitor-enter p5

    .line 118
    :try_start_1
    iget-object v3, p5, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    .line 119
    .line 120
    if-nez v3, :cond_6

    .line 121
    .line 122
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    iput-object v3, p5, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :catchall_0
    move-exception p0

    .line 130
    goto :goto_2

    .line 131
    :cond_6
    :goto_1
    iget-object v3, p5, Lcom/android/server/uri/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    .line 132
    .line 133
    invoke-virtual {v3, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    monitor-exit p5

    .line 137
    goto :goto_3

    .line 138
    :goto_2
    monitor-exit p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    throw p0

    .line 140
    :cond_7
    :goto_3
    and-int/lit8 p4, p4, 0x2

    .line 141
    .line 142
    if-eqz p4, :cond_a

    .line 143
    .line 144
    iget-object p4, p2, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    .line 145
    .line 146
    if-nez p4, :cond_8

    .line 147
    .line 148
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    .line 149
    .line 150
    .line 151
    move-result-object p4

    .line 152
    iput-object p4, p2, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    .line 153
    .line 154
    iget p4, p2, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    .line 155
    .line 156
    or-int/lit8 p4, p4, 0x2

    .line 157
    .line 158
    iput p4, p2, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    .line 159
    .line 160
    invoke-virtual {p2}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    .line 161
    .line 162
    .line 163
    :cond_8
    iget-object p4, p2, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    .line 164
    .line 165
    invoke-virtual {p4, p5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result p4

    .line 169
    if-eqz p4, :cond_a

    .line 170
    .line 171
    monitor-enter p5

    .line 172
    :try_start_2
    iget-object p4, p5, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    .line 173
    .line 174
    if-nez p4, :cond_9

    .line 175
    .line 176
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    .line 177
    .line 178
    .line 179
    move-result-object p4

    .line 180
    iput-object p4, p5, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    .line 181
    .line 182
    goto :goto_4

    .line 183
    :catchall_1
    move-exception p0

    .line 184
    goto :goto_5

    .line 185
    :cond_9
    :goto_4
    iget-object p4, p5, Lcom/android/server/uri/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    .line 186
    .line 187
    invoke-virtual {p4, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    monitor-exit p5

    .line 191
    goto :goto_6

    .line 192
    :goto_5
    monitor-exit p5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 193
    throw p0

    .line 194
    :cond_a
    :goto_6
    invoke-virtual {p2}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    .line 195
    .line 196
    .line 197
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 198
    .line 199
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 200
    .line 201
    .line 202
    move-result p2

    .line 203
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    iget-object p1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 208
    .line 209
    iget v4, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 210
    .line 211
    if-eqz p3, :cond_b

    .line 212
    .line 213
    move v6, v2

    .line 214
    goto :goto_7

    .line 215
    :cond_b
    move v6, v1

    .line 216
    :goto_7
    const/4 v2, 0x0

    .line 217
    const/4 v5, 0x0

    .line 218
    move-object v0, p0

    .line 219
    move v1, p2

    .line 220
    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZZ)V

    .line 221
    .line 222
    .line 223
    return-void

    .line 224
    :catchall_2
    move-exception p0

    .line 225
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 226
    throw p0
.end method

.method public final maybePrunePersistedUriGrantsLocked(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/util/ArrayMap;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/16 v2, 0x200

    .line 18
    .line 19
    if-ge v1, v2, :cond_1

    .line 20
    .line 21
    return v0

    .line 22
    :cond_1
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_3

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lcom/android/server/uri/UriPermission;

    .line 45
    .line 46
    iget v4, v3, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    .line 47
    .line 48
    if-eqz v4, :cond_2

    .line 49
    .line 50
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    sub-int/2addr p1, v2

    .line 59
    if-gtz p1, :cond_4

    .line 60
    .line 61
    return v0

    .line 62
    :cond_4
    new-instance v2, Lcom/android/server/uri/UriPermission$PersistedTimeComparator;

    .line 63
    .line 64
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 68
    .line 69
    .line 70
    :goto_1
    if-ge v0, p1, :cond_5

    .line 71
    .line 72
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Lcom/android/server/uri/UriPermission;

    .line 77
    .line 78
    const/4 v3, -0x1

    .line 79
    invoke-virtual {v2, v3}, Lcom/android/server/uri/UriPermission;->releasePersistableModes(I)Z

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v2}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V

    .line 83
    .line 84
    .line 85
    add-int/lit8 v0, v0, 0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_5
    const/4 p0, 0x1

    .line 89
    return p0
.end method

.method public final releasePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    .locals 7

    .line 1
    const-string v0, "No permission grants found for UID "

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 6
    .line 7
    const-string v2, "android.permission.FORCE_PERSISTABLE_URI_PERMISSIONS"

    .line 8
    .line 9
    const-string/jumbo v3, "releasePersistableUriPermission"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 16
    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    invoke-virtual {v1, p3, v2, v3, p4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string/jumbo v1, "releasePersistableUriPermission"

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    :goto_0
    const/4 v2, 0x3

    .line 35
    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    .line 39
    .line 40
    monitor-enter v2

    .line 41
    :try_start_0
    new-instance v3, Lcom/android/server/uri/GrantUri;

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-direct {v3, p4, v4, p1}, Lcom/android/server/uri/GrantUri;-><init>(IILandroid/net/Uri;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v1, v3}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    new-instance v5, Lcom/android/server/uri/GrantUri;

    .line 52
    .line 53
    const/16 v6, 0x80

    .line 54
    .line 55
    invoke-direct {v5, p4, v6, p1}, Lcom/android/server/uri/GrantUri;-><init>(IILandroid/net/Uri;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v1, v5}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    .line 59
    .line 60
    .line 61
    move-result-object p4

    .line 62
    if-nez v3, :cond_2

    .line 63
    .line 64
    if-nez p4, :cond_2

    .line 65
    .line 66
    if-eqz p3, :cond_1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 70
    .line 71
    new-instance p2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string p3, " and Uri "

    .line 80
    .line 81
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p0

    .line 99
    :catchall_0
    move-exception p0

    .line 100
    goto :goto_2

    .line 101
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 102
    .line 103
    invoke-virtual {v3, p2}, Lcom/android/server/uri/UriPermission;->releasePersistableModes(I)Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    invoke-virtual {p0, v3}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V

    .line 108
    .line 109
    .line 110
    :cond_3
    if-eqz p4, :cond_4

    .line 111
    .line 112
    invoke-virtual {p4, p2}, Lcom/android/server/uri/UriPermission;->releasePersistableModes(I)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    or-int/2addr v4, p1

    .line 117
    invoke-virtual {p0, p4}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V

    .line 118
    .line 119
    .line 120
    :cond_4
    if-eqz v4, :cond_5

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 123
    .line 124
    .line 125
    :cond_5
    monitor-exit v2

    .line 126
    return-void

    .line 127
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    throw p0
.end method

.method public final removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V
    .locals 4

    .line 1
    iget v0, p1, Lcom/android/server/uri/UriPermission;->modeFlags:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 7
    .line 8
    iget v1, p1, Lcom/android/server/uri/UriPermission;->targetUid:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/util/ArrayMap;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iget-object p1, p1, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v3, "-"

    .line 27
    .line 28
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string/jumbo v3, "{"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string/jumbo v3, "} "

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/server/uri/UriGrantsManagerService;->addToHistoryLocked(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 70
    .line 71
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 72
    .line 73
    .line 74
    :cond_2
    return-void
.end method

.method public final removeUriPermissionsForPackageLocked(Ljava/lang/String;ZZI)V
    .locals 11

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p4, v0, :cond_1

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    const-string p1, "Must narrow by either package or user"

    .line 10
    .line 11
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw p0

    .line 15
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    move v3, v2

    .line 23
    :goto_1
    if-ge v2, v1, :cond_a

    .line 24
    .line 25
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 32
    .line 33
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    check-cast v5, Landroid/util/ArrayMap;

    .line 38
    .line 39
    const/4 v6, 0x1

    .line 40
    if-eq p4, v0, :cond_2

    .line 41
    .line 42
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    if-ne p4, v7, :cond_9

    .line 47
    .line 48
    :cond_2
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    if-eqz v8, :cond_8

    .line 61
    .line 62
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    check-cast v8, Lcom/android/server/uri/UriPermission;

    .line 67
    .line 68
    if-eqz p1, :cond_5

    .line 69
    .line 70
    if-nez p3, :cond_4

    .line 71
    .line 72
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    if-nez v9, :cond_5

    .line 79
    .line 80
    :cond_4
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    if-eqz v9, :cond_3

    .line 87
    .line 88
    :cond_5
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    .line 89
    .line 90
    iget-object v9, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 91
    .line 92
    invoke-virtual {v9}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    const-string v10, "downloads"

    .line 97
    .line 98
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    if-eqz v9, :cond_6

    .line 103
    .line 104
    if-nez p2, :cond_6

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_6
    if-eqz p2, :cond_7

    .line 108
    .line 109
    move v9, v0

    .line 110
    goto :goto_3

    .line 111
    :cond_7
    const/16 v9, -0x41

    .line 112
    .line 113
    :goto_3
    invoke-virtual {v8, v9, v6}, Lcom/android/server/uri/UriPermission;->revokeModes(IZ)Z

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    or-int/2addr v3, v9

    .line 118
    iget v9, v8, Lcom/android/server/uri/UriPermission;->modeFlags:I

    .line 119
    .line 120
    if-nez v9, :cond_3

    .line 121
    .line 122
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 123
    .line 124
    .line 125
    new-instance v9, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string v10, "-"

    .line 128
    .line 129
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget v10, v8, Lcom/android/server/uri/UriPermission;->targetUid:I

    .line 133
    .line 134
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v10, "["

    .line 138
    .line 139
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 143
    .line 144
    .line 145
    move-result v10

    .line 146
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v10, "] "

    .line 150
    .line 151
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    iget-object v8, v8, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    .line 155
    .line 156
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    invoke-virtual {p0, v8}, Lcom/android/server/uri/UriGrantsManagerService;->addToHistoryLocked(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_8
    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 168
    .line 169
    .line 170
    move-result v5

    .line 171
    if-eqz v5, :cond_9

    .line 172
    .line 173
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 174
    .line 175
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 176
    .line 177
    .line 178
    add-int/lit8 v1, v1, -0x1

    .line 179
    .line 180
    add-int/lit8 v2, v2, -0x1

    .line 181
    .line 182
    :cond_9
    add-int/2addr v2, v6

    .line 183
    goto/16 :goto_1

    .line 184
    .line 185
    :cond_a
    if-eqz v3, :cond_b

    .line 186
    .line 187
    invoke-virtual {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 188
    .line 189
    .line 190
    :cond_b
    return-void
.end method

.method public final revokeUriPermissionLocked(Ljava/lang/String;ILcom/android/server/uri/GrantUri;IZ)V
    .locals 9

    .line 1
    iget v0, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    .line 2
    .line 3
    const-string v1, "-"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-nez p5, :cond_5

    .line 8
    .line 9
    iget-object p5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {p5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p5

    .line 15
    check-cast p5, Landroid/util/ArrayMap;

    .line 16
    .line 17
    if-eqz p5, :cond_4

    .line 18
    .line 19
    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    sub-int/2addr v4, v2

    .line 24
    move v2, v3

    .line 25
    :goto_0
    if-ltz v4, :cond_2

    .line 26
    .line 27
    invoke-virtual {p5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    check-cast v5, Lcom/android/server/uri/UriPermission;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    iget-object v6, v5, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-nez v6, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    iget-object v6, v5, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    .line 45
    .line 46
    iget v7, v6, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    .line 47
    .line 48
    if-ne v7, v0, :cond_1

    .line 49
    .line 50
    iget-object v6, v6, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 51
    .line 52
    iget-object v7, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 53
    .line 54
    invoke-virtual {v6, v7}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-eqz v6, :cond_1

    .line 59
    .line 60
    or-int/lit8 v6, p4, 0x40

    .line 61
    .line 62
    invoke-virtual {v5, v6, v3}, Lcom/android/server/uri/UriPermission;->revokeModes(IZ)Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    or-int/2addr v2, v6

    .line 67
    iget v6, v5, Lcom/android/server/uri/UriPermission;->modeFlags:I

    .line 68
    .line 69
    if-nez v6, :cond_1

    .line 70
    .line 71
    invoke-virtual {p5, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    new-instance v6, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget v7, v5, Lcom/android/server/uri/UriPermission;->targetUid:I

    .line 80
    .line 81
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v7, "("

    .line 85
    .line 86
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v7, ") "

    .line 97
    .line 98
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object v5, v5, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    .line 102
    .line 103
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-virtual {p0, v5}, Lcom/android/server/uri/UriGrantsManagerService;->addToHistoryLocked(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, -0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {p5}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_3

    .line 121
    .line 122
    iget-object p1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 123
    .line 124
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 125
    .line 126
    .line 127
    :cond_3
    if-eqz v2, :cond_4

    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 130
    .line 131
    .line 132
    :cond_4
    return-void

    .line 133
    :cond_5
    iget-object p2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 134
    .line 135
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    sub-int/2addr p2, v2

    .line 140
    move p5, v3

    .line 141
    :goto_2
    if-ltz p2, :cond_b

    .line 142
    .line 143
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 144
    .line 145
    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 146
    .line 147
    .line 148
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 149
    .line 150
    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    check-cast v4, Landroid/util/ArrayMap;

    .line 155
    .line 156
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    sub-int/2addr v5, v2

    .line 161
    :goto_3
    if-ltz v5, :cond_9

    .line 162
    .line 163
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    check-cast v6, Lcom/android/server/uri/UriPermission;

    .line 168
    .line 169
    if-eqz p1, :cond_6

    .line 170
    .line 171
    iget-object v7, v6, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v7

    .line 177
    if-nez v7, :cond_6

    .line 178
    .line 179
    goto :goto_5

    .line 180
    :cond_6
    iget-object v7, v6, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    .line 181
    .line 182
    iget v8, v7, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    .line 183
    .line 184
    if-ne v8, v0, :cond_8

    .line 185
    .line 186
    iget-object v7, v7, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 187
    .line 188
    iget-object v8, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 189
    .line 190
    invoke-virtual {v7, v8}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    .line 191
    .line 192
    .line 193
    move-result v7

    .line 194
    if-eqz v7, :cond_8

    .line 195
    .line 196
    or-int/lit8 v7, p4, 0x40

    .line 197
    .line 198
    if-nez p1, :cond_7

    .line 199
    .line 200
    move v8, v2

    .line 201
    goto :goto_4

    .line 202
    :cond_7
    move v8, v3

    .line 203
    :goto_4
    invoke-virtual {v6, v7, v8}, Lcom/android/server/uri/UriPermission;->revokeModes(IZ)Z

    .line 204
    .line 205
    .line 206
    move-result v7

    .line 207
    or-int/2addr p5, v7

    .line 208
    iget v7, v6, Lcom/android/server/uri/UriPermission;->modeFlags:I

    .line 209
    .line 210
    if-nez v7, :cond_8

    .line 211
    .line 212
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    new-instance v7, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    iget v8, v6, Lcom/android/server/uri/UriPermission;->targetUid:I

    .line 221
    .line 222
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string v8, "\""

    .line 226
    .line 227
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 231
    .line 232
    .line 233
    move-result v8

    .line 234
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    const-string v8, "\" "

    .line 238
    .line 239
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    iget-object v6, v6, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    .line 243
    .line 244
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v6

    .line 251
    invoke-virtual {p0, v6}, Lcom/android/server/uri/UriGrantsManagerService;->addToHistoryLocked(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    :cond_8
    :goto_5
    add-int/lit8 v5, v5, -0x1

    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_9
    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 258
    .line 259
    .line 260
    move-result v4

    .line 261
    if-eqz v4, :cond_a

    .line 262
    .line 263
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 264
    .line 265
    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 266
    .line 267
    .line 268
    :cond_a
    add-int/lit8 p2, p2, -0x1

    .line 269
    .line 270
    goto/16 :goto_2

    .line 271
    .line 272
    :cond_b
    if-eqz p5, :cond_c

    .line 273
    .line 274
    invoke-virtual {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 275
    .line 276
    .line 277
    :cond_c
    return-void
.end method

.method public final schedulePersistUriGrants()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mH:Lcom/android/server/uri/UriGrantsManagerService$H;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mH:Lcom/android/server/uri/UriGrantsManagerService$H;

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-wide/16 v1, 0x2710

    .line 17
    .line 18
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final takePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    .locals 7

    .line 1
    const-string v0, "No persistable permission grants found for UID "

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 6
    .line 7
    const-string v2, "android.permission.FORCE_PERSISTABLE_URI_PERMISSIONS"

    .line 8
    .line 9
    const-string/jumbo v3, "takePersistableUriPermission"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 16
    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    invoke-virtual {v1, p3, v2, v3, p4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string/jumbo p3, "takePersistableUriPermission"

    .line 25
    .line 26
    .line 27
    invoke-static {p3}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    :goto_0
    const/4 v1, 0x3

    .line 35
    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    .line 39
    .line 40
    monitor-enter v1

    .line 41
    :try_start_0
    new-instance v2, Lcom/android/server/uri/GrantUri;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-direct {v2, p4, v3, p1}, Lcom/android/server/uri/GrantUri;-><init>(IILandroid/net/Uri;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p3, v2}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    new-instance v4, Lcom/android/server/uri/GrantUri;

    .line 52
    .line 53
    const/16 v5, 0x80

    .line 54
    .line 55
    invoke-direct {v4, p4, v5, p1}, Lcom/android/server/uri/GrantUri;-><init>(IILandroid/net/Uri;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p3, v4}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    .line 59
    .line 60
    .line 61
    move-result-object p4

    .line 62
    const/4 v4, 0x1

    .line 63
    if-eqz v2, :cond_1

    .line 64
    .line 65
    iget v5, v2, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    .line 66
    .line 67
    and-int/2addr v5, p2

    .line 68
    if-ne v5, p2, :cond_1

    .line 69
    .line 70
    move v5, v4

    .line 71
    goto :goto_1

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_4

    .line 74
    :cond_1
    move v5, v3

    .line 75
    :goto_1
    if-eqz p4, :cond_2

    .line 76
    .line 77
    iget v6, p4, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    .line 78
    .line 79
    and-int/2addr v6, p2

    .line 80
    if-ne v6, p2, :cond_2

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_2
    move v4, v3

    .line 84
    :goto_2
    if-nez v5, :cond_4

    .line 85
    .line 86
    if-eqz v4, :cond_3

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 90
    .line 91
    new-instance p2, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string p3, " and Uri "

    .line 100
    .line 101
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p0

    .line 119
    :cond_4
    :goto_3
    if-eqz v5, :cond_5

    .line 120
    .line 121
    invoke-virtual {v2, p2}, Lcom/android/server/uri/UriPermission;->takePersistableModes(I)Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    :cond_5
    if-eqz v4, :cond_6

    .line 126
    .line 127
    invoke-virtual {p4, p2}, Lcom/android/server/uri/UriPermission;->takePersistableModes(I)Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    or-int/2addr v3, p1

    .line 132
    :cond_6
    invoke-virtual {p0, p3}, Lcom/android/server/uri/UriGrantsManagerService;->maybePrunePersistedUriGrantsLocked(I)Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    or-int/2addr p1, v3

    .line 137
    if-eqz p1, :cond_7

    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 140
    .line 141
    .line 142
    :cond_7
    monitor-exit v1

    .line 143
    return-void

    .line 144
    :goto_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    throw p0
.end method
