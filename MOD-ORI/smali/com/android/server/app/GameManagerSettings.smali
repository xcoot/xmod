.class public final Lcom/android/server/app/GameManagerSettings;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mConfigOverrides:Landroid/util/ArrayMap;

.field public final mGameModes:Landroid/util/ArrayMap;

.field final mSettingsFile:Landroid/util/AtomicFile;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/app/GameManagerSettings;->mGameModes:Landroid/util/ArrayMap;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/app/GameManagerSettings;->mConfigOverrides:Landroid/util/ArrayMap;

    .line 17
    .line 18
    new-instance v0, Ljava/io/File;

    .line 19
    .line 20
    const-string/jumbo v1, "system"

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/16 v1, 0x1fd

    .line 34
    .line 35
    const/4 v2, -0x1

    .line 36
    invoke-static {p1, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 37
    .line 38
    .line 39
    new-instance p1, Landroid/util/AtomicFile;

    .line 40
    .line 41
    new-instance v1, Ljava/io/File;

    .line 42
    .line 43
    const-string/jumbo v2, "game-manager-service.xml"

    .line 44
    .line 45
    .line 46
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p1, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lcom/android/server/app/GameManagerSettings;->mSettingsFile:Landroid/util/AtomicFile;

    .line 53
    .line 54
    return-void
.end method

.method public static writeGameModeConfigTags(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getAvailableGameModes()[I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    array-length v1, v0

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_2

    .line 11
    .line 12
    aget v3, v0, v2

    .line 13
    .line 14
    invoke-virtual {p1, v3}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    if-eqz v4, :cond_1

    .line 19
    .line 20
    const-string/jumbo v5, "gameModeConfig"

    .line 21
    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    invoke-interface {p0, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 25
    .line 26
    .line 27
    const-string/jumbo v5, "gameMode"

    .line 28
    .line 29
    .line 30
    invoke-interface {p0, v6, v5, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 31
    .line 32
    .line 33
    const-string/jumbo v3, "useAngle"

    .line 34
    .line 35
    .line 36
    monitor-enter v4

    .line 37
    :try_start_0
    iget-boolean v5, v4, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mUseAngle:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 38
    .line 39
    monitor-exit v4

    .line 40
    invoke-interface {p0, v6, v3, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 41
    .line 42
    .line 43
    const-string/jumbo v3, "fps"

    .line 44
    .line 45
    .line 46
    monitor-enter v4

    .line 47
    :try_start_1
    iget-object v5, v4, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mFps:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    .line 49
    monitor-exit v4

    .line 50
    invoke-interface {p0, v6, v3, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 51
    .line 52
    .line 53
    const-string/jumbo v3, "scaling"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getScaling()F

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    invoke-interface {p0, v6, v3, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 61
    .line 62
    .line 63
    const-string/jumbo v3, "loadingBoost"

    .line 64
    .line 65
    .line 66
    monitor-enter v4

    .line 67
    :try_start_2
    iget v5, v4, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mLoadingBoostDuration:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    .line 69
    monitor-exit v4

    .line 70
    invoke-interface {p0, v6, v3, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    .line 72
    .line 73
    const-string/jumbo v3, "gameModeConfig"

    .line 74
    .line 75
    .line 76
    invoke-interface {p0, v6, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    monitor-exit v4

    .line 82
    throw p0

    .line 83
    :catchall_1
    move-exception p0

    .line 84
    monitor-exit v4

    .line 85
    throw p0

    .line 86
    :catchall_2
    move-exception p0

    .line 87
    monitor-exit v4

    .line 88
    throw p0

    .line 89
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    return-void
.end method


# virtual methods
.method public final readPackage(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 9

    .line 1
    const-string/jumbo v0, "name"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string p0, "GameManagerService_GameManagerSettings"

    .line 12
    .line 13
    const-string v0, "No package name found in package tag"

    .line 14
    .line 15
    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    :try_start_0
    const-string/jumbo v2, "gameMode"

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iget-object v3, p0, Lcom/android/server/app/GameManagerSettings;->mGameModes:Landroid/util/ArrayMap;

    .line 30
    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    const-string v2, "GameManagerService_GameManagerSettings"

    .line 40
    .line 41
    const-string v3, "No game mode selected by user for package"

    .line 42
    .line 43
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    new-instance v3, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    .line 55
    .line 56
    invoke-direct {v3, v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    :goto_1
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    const/4 v5, 0x1

    .line 64
    if-eq v4, v5, :cond_8

    .line 65
    .line 66
    const/4 v6, 0x3

    .line 67
    if-ne v4, v6, :cond_2

    .line 68
    .line 69
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-le v7, v2, :cond_8

    .line 74
    .line 75
    :cond_2
    if-eq v4, v6, :cond_1

    .line 76
    .line 77
    const/4 v5, 0x4

    .line 78
    if-ne v4, v5, :cond_3

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    const/4 v6, 0x2

    .line 86
    if-ne v4, v6, :cond_7

    .line 87
    .line 88
    const-string/jumbo v6, "gameModeConfig"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    if-eqz v6, :cond_7

    .line 96
    .line 97
    :try_start_1
    const-string/jumbo v4, "gameMode"

    .line 98
    .line 99
    .line 100
    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v4
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4

    .line 104
    invoke-virtual {v3, v4}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getOrAddDefaultGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    :try_start_2
    const-string/jumbo v5, "scaling"

    .line 109
    .line 110
    .line 111
    invoke-interface {p1, v1, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;)F

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    monitor-enter v4
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    .line 116
    :try_start_3
    iput v5, v4, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mScaling:F
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    .line 118
    :try_start_4
    monitor-exit v4

    .line 119
    goto :goto_2

    .line 120
    :catchall_0
    move-exception v5

    .line 121
    monitor-exit v4

    .line 122
    throw v5
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1

    .line 123
    :catch_1
    move-exception v5

    .line 124
    const-string/jumbo v6, "scaling"

    .line 125
    .line 126
    .line 127
    invoke-interface {p1, v1, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    if-eqz v6, :cond_4

    .line 132
    .line 133
    const-string v7, "GameManagerService_GameManagerSettings"

    .line 134
    .line 135
    const-string v8, "Invalid scaling value in config tag: "

    .line 136
    .line 137
    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    invoke-static {v7, v6, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    .line 143
    .line 144
    :cond_4
    :goto_2
    const-string/jumbo v5, "fps"

    .line 145
    .line 146
    .line 147
    invoke-interface {p1, v1, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    if-eqz v5, :cond_5

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_5
    const-string v5, ""

    .line 155
    .line 156
    :goto_3
    monitor-enter v4

    .line 157
    :try_start_5
    iput-object v5, v4, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mFps:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 158
    .line 159
    monitor-exit v4

    .line 160
    :try_start_6
    const-string/jumbo v5, "useAngle"

    .line 161
    .line 162
    .line 163
    invoke-interface {p1, v1, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    monitor-enter v4
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2

    .line 168
    :try_start_7
    iput-boolean v5, v4, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mUseAngle:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 169
    .line 170
    :try_start_8
    monitor-exit v4

    .line 171
    goto :goto_4

    .line 172
    :catchall_1
    move-exception v5

    .line 173
    monitor-exit v4

    .line 174
    throw v5
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_2

    .line 175
    :catch_2
    move-exception v5

    .line 176
    const-string/jumbo v6, "useAngle"

    .line 177
    .line 178
    .line 179
    invoke-interface {p1, v1, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    if-eqz v6, :cond_6

    .line 184
    .line 185
    const-string v7, "GameManagerService_GameManagerSettings"

    .line 186
    .line 187
    const-string v8, "Invalid useAngle value in config tag: "

    .line 188
    .line 189
    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    invoke-static {v7, v6, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    .line 195
    .line 196
    :cond_6
    :goto_4
    :try_start_9
    const-string/jumbo v5, "loadingBoost"

    .line 197
    .line 198
    .line 199
    invoke-interface {p1, v1, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    move-result v5

    .line 203
    monitor-enter v4
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_3

    .line 204
    :try_start_a
    iput v5, v4, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mLoadingBoostDuration:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 205
    .line 206
    :try_start_b
    monitor-exit v4

    .line 207
    goto/16 :goto_1

    .line 208
    .line 209
    :catchall_2
    move-exception v5

    .line 210
    monitor-exit v4

    .line 211
    throw v5
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_3

    .line 212
    :catch_3
    move-exception v4

    .line 213
    const-string/jumbo v5, "loadingBoost"

    .line 214
    .line 215
    .line 216
    invoke-interface {p1, v1, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    if-eqz v5, :cond_1

    .line 221
    .line 222
    const-string v6, "GameManagerService_GameManagerSettings"

    .line 223
    .line 224
    const-string v7, "Invalid loading boost in config tag: "

    .line 225
    .line 226
    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    invoke-static {v6, v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    .line 232
    .line 233
    goto/16 :goto_1

    .line 234
    .line 235
    :catchall_3
    move-exception p0

    .line 236
    monitor-exit v4

    .line 237
    throw p0

    .line 238
    :catch_4
    move-exception v4

    .line 239
    const-string v5, "GameManagerService_GameManagerSettings"

    .line 240
    .line 241
    new-instance v6, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    const-string v7, "Invalid game mode value in config tag: "

    .line 244
    .line 245
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    const-string/jumbo v7, "gameMode"

    .line 249
    .line 250
    .line 251
    invoke-interface {p1, v1, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v7

    .line 255
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v6

    .line 262
    invoke-static {v5, v6, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    .line 264
    .line 265
    goto/16 :goto_1

    .line 266
    .line 267
    :cond_7
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 268
    .line 269
    .line 270
    const-string v6, "GameManagerService_GameManagerSettings"

    .line 271
    .line 272
    new-instance v7, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    const-string v8, "Unknown element under package tag: "

    .line 275
    .line 276
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    const-string v5, " with type: "

    .line 283
    .line 284
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v4

    .line 294
    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    goto/16 :goto_1

    .line 298
    .line 299
    :cond_8
    iget-object p1, v3, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigLock:Ljava/lang/Object;

    .line 300
    .line 301
    monitor-enter p1

    .line 302
    :try_start_c
    iget-object v1, v3, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    .line 303
    .line 304
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    xor-int/2addr v1, v5

    .line 309
    monitor-exit p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 310
    if-eqz v1, :cond_9

    .line 311
    .line 312
    iget-object p0, p0, Lcom/android/server/app/GameManagerSettings;->mConfigOverrides:Landroid/util/ArrayMap;

    .line 313
    .line 314
    invoke-virtual {p0, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    :cond_9
    return-void

    .line 318
    :catchall_4
    move-exception p0

    .line 319
    :try_start_d
    monitor-exit p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 320
    throw p0
.end method

.method public final readPersistentDataLocked()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/app/GameManagerSettings;->mGameModes:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/app/GameManagerSettings;->mSettingsFile:Landroid/util/AtomicFile;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-string v1, "GameManagerService_GameManagerSettings"

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string p0, "Settings file doesn\'t exist, skip reading"

    .line 17
    .line 18
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/app/GameManagerSettings;->mSettingsFile:Landroid/util/AtomicFile;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    :goto_0
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const/4 v4, 0x1

    .line 37
    const/4 v5, 0x2

    .line 38
    if-eq v3, v5, :cond_1

    .line 39
    .line 40
    if-eq v3, v4, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    if-eq v3, v5, :cond_2

    .line 44
    .line 45
    const-string p0, "No start tag found in game manager settings"

    .line 46
    .line 47
    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catch_0
    move-exception p0

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    :cond_3
    :goto_1
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-eq v6, v4, :cond_7

    .line 62
    .line 63
    const/4 v7, 0x3

    .line 64
    if-ne v6, v7, :cond_4

    .line 65
    .line 66
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    if-le v8, v3, :cond_7

    .line 71
    .line 72
    :cond_4
    if-eq v6, v7, :cond_3

    .line 73
    .line 74
    const/4 v7, 0x4

    .line 75
    if-ne v6, v7, :cond_5

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_5
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    if-ne v6, v5, :cond_6

    .line 83
    .line 84
    const-string/jumbo v8, "package"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    if-eqz v8, :cond_6

    .line 92
    .line 93
    invoke-virtual {p0, v2}, Lcom/android/server/app/GameManagerSettings;->readPackage(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_6
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 98
    .line 99
    .line 100
    new-instance v8, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string v9, "Unknown element under packages tag: "

    .line 106
    .line 107
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v7, " with type: "

    .line 114
    .line 115
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :goto_2
    const-string v0, "Error reading game manager settings"

    .line 134
    .line 135
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    .line 137
    .line 138
    return-void
.end method

.method public final writePersistentDataLocked()V
    .locals 9

    .line 1
    const-string/jumbo v0, "package"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "packages"

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/android/server/app/GameManagerSettings;->mSettingsFile:Landroid/util/AtomicFile;

    .line 9
    .line 10
    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 11
    .line 12
    .line 13
    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 14
    :try_start_1
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-interface {v4, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 21
    .line 22
    .line 23
    const-string/jumbo v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 24
    .line 25
    .line 26
    const/4 v6, 0x1

    .line 27
    invoke-interface {v4, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v4, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 31
    .line 32
    .line 33
    new-instance v5, Landroid/util/ArraySet;

    .line 34
    .line 35
    iget-object v6, p0, Lcom/android/server/app/GameManagerSettings;->mGameModes:Landroid/util/ArrayMap;

    .line 36
    .line 37
    invoke-virtual {v6}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-direct {v5, v6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 42
    .line 43
    .line 44
    iget-object v6, p0, Lcom/android/server/app/GameManagerSettings;->mConfigOverrides:Landroid/util/ArrayMap;

    .line 45
    .line 46
    invoke-virtual {v6}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-eqz v6, :cond_1

    .line 62
    .line 63
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    check-cast v6, Ljava/lang/String;

    .line 68
    .line 69
    invoke-interface {v4, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 70
    .line 71
    .line 72
    const-string/jumbo v7, "name"

    .line 73
    .line 74
    .line 75
    invoke-interface {v4, v2, v7, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    .line 77
    .line 78
    iget-object v7, p0, Lcom/android/server/app/GameManagerSettings;->mGameModes:Landroid/util/ArrayMap;

    .line 79
    .line 80
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    if-eqz v7, :cond_0

    .line 85
    .line 86
    const-string/jumbo v7, "gameMode"

    .line 87
    .line 88
    .line 89
    iget-object v8, p0, Lcom/android/server/app/GameManagerSettings;->mGameModes:Landroid/util/ArrayMap;

    .line 90
    .line 91
    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    check-cast v8, Ljava/lang/Integer;

    .line 96
    .line 97
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 98
    .line 99
    .line 100
    move-result v8

    .line 101
    invoke-interface {v4, v2, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    move-object v2, v3

    .line 107
    goto :goto_2

    .line 108
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/server/app/GameManagerSettings;->mConfigOverrides:Landroid/util/ArrayMap;

    .line 109
    .line 110
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    check-cast v6, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    .line 115
    .line 116
    invoke-static {v4, v6}, Lcom/android/server/app/GameManagerSettings;->writeGameModeConfigTags(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)V

    .line 117
    .line 118
    .line 119
    invoke-interface {v4, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_1
    invoke-interface {v4, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 124
    .line 125
    .line 126
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/android/server/app/GameManagerSettings;->mSettingsFile:Landroid/util/AtomicFile;

    .line 130
    .line 131
    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/android/server/app/GameManagerSettings;->mSettingsFile:Landroid/util/AtomicFile;

    .line 135
    .line 136
    invoke-virtual {v0}, Landroid/util/AtomicFile;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    const/16 v1, 0x1b0

    .line 141
    .line 142
    const/4 v2, -0x1

    .line 143
    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :catch_1
    move-exception v0

    .line 148
    :goto_2
    iget-object p0, p0, Lcom/android/server/app/GameManagerSettings;->mSettingsFile:Landroid/util/AtomicFile;

    .line 149
    .line 150
    invoke-virtual {p0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 151
    .line 152
    .line 153
    const-string p0, "GameManagerService_GameManagerSettings"

    .line 154
    .line 155
    const-string v1, "Unable to write game manager service settings, current changes will be lost at reboot"

    .line 156
    .line 157
    invoke-static {p0, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    .line 159
    .line 160
    return-void
.end method
