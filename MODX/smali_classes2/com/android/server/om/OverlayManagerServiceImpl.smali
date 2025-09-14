.class public final Lcom/android/server/om/OverlayManagerServiceImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDefaultOverlays:[Ljava/lang/String;

.field public final mIdmapManager:Lcom/android/server/om/IdmapManager;

.field public final mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

.field public mOverlayManagerExt:Lcom/android/server/om/OverlayManagerServiceExt;

.field public final mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

.field public final mSettings:Lcom/android/server/om/OverlayManagerSettings;


# direct methods
.method public constructor <init>(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;Lcom/android/server/om/IdmapManager;Lcom/android/server/om/OverlayManagerSettings;Lcom/android/internal/content/om/OverlayConfig;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method

.method public static createLocaleOverlayPreferenceDir(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "/overlays/current_locale_apks/locale_preferences_"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p0, "/"

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0, p0}, Lcom/android/server/om/OverlayManagerServiceImpl;->getDataFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    sget-object v0, Lcom/android/server/om/SemSamsungThemeUtils;->disableOverlayList:Ljava/util/List;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v1, "createLocaleOverlayPreferenceDir: Unable to create dir for new user - "

    .line 41
    .line 42
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const-string v0, "OverlayManager"

    .line 53
    .line 54
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    const/16 v0, 0x1fc

    .line 63
    .line 64
    const/4 v1, -0x1

    .line 65
    invoke-static {p0, v0, v1, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_0
    return-void
.end method

.method public static dumpFile(Ljava/io/PrintWriter;Ljava/io/File;Ljava/lang/String;I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "uid= "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p3, " "

    .line 17
    .line 18
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p2, " Dump"

    .line 25
    .line 26
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 37
    .line 38
    .line 39
    move-result-wide p2

    .line 40
    const-wide/32 v0, 0x100000

    .line 41
    .line 42
    .line 43
    sub-long/2addr p2, v0

    .line 44
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    .line 45
    .line 46
    new-instance v1, Ljava/io/FileReader;

    .line 47
    .line 48
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 49
    .line 50
    invoke-direct {v1, p1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    const-wide/16 v1, 0x0

    .line 57
    .line 58
    cmp-long p1, p2, v1

    .line 59
    .line 60
    if-lez p1, :cond_0

    .line 61
    .line 62
    :try_start_1
    invoke-virtual {v0, p2, p3}, Ljava/io/BufferedReader;->skip(J)J

    .line 63
    .line 64
    .line 65
    move-result-wide v1

    .line 66
    cmp-long p1, v1, p2

    .line 67
    .line 68
    if-eqz p1, :cond_0

    .line 69
    .line 70
    const-string p1, "Error in skipping file contents."

    .line 71
    .line 72
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto :goto_1

    .line 78
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-eqz p1, :cond_1

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 89
    .line 90
    .line 91
    goto :goto_3

    .line 92
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :catchall_1
    move-exception p1

    .line 97
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 101
    :catch_0
    :goto_3
    return-void
.end method

.method public static getDataFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/io/File;

    .line 6
    .line 7
    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance p0, Ljava/io/File;

    .line 11
    .line 12
    invoke-direct {p0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V
    .locals 10

    .line 1
    iget-object v0, p2, Lcom/android/server/om/DumpState;->mPackageName:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/content/om/OverlayIdentifier;

    .line 8
    .line 9
    iget-object v3, p2, Lcom/android/server/om/DumpState;->mPackageName:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v4, p2, Lcom/android/server/om/DumpState;->mOverlayName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {v0, v3, v4}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 17
    .line 18
    invoke-virtual {v3, v0, v1}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    new-instance v4, Landroid/util/Pair;

    .line 25
    .line 26
    iget-object v3, v3, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    .line 27
    .line 28
    invoke-direct {v4, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object v4, v2

    .line 33
    :goto_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 34
    .line 35
    iget-object v3, v0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v3

    .line 38
    :try_start_0
    iget-object v5, v0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v5}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    iget v6, p2, Lcom/android/server/om/DumpState;->mUserId:I

    .line 45
    .line 46
    const/4 v7, -0x1

    .line 47
    if-eq v6, v7, :cond_1

    .line 48
    .line 49
    new-instance v6, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda4;

    .line 50
    .line 51
    const/4 v7, 0x0

    .line 52
    invoke-direct {v6, v7, p2}, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    goto :goto_1

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto/16 :goto_c

    .line 62
    .line 63
    :cond_1
    :goto_1
    iget-object v6, p2, Lcom/android/server/om/DumpState;->mPackageName:Ljava/lang/String;

    .line 64
    .line 65
    if-eqz v6, :cond_2

    .line 66
    .line 67
    new-instance v6, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda4;

    .line 68
    .line 69
    const/4 v7, 0x1

    .line 70
    invoke-direct {v6, v7, p2}, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    :cond_2
    iget-object v6, p2, Lcom/android/server/om/DumpState;->mOverlayName:Ljava/lang/String;

    .line 78
    .line 79
    if-eqz v6, :cond_3

    .line 80
    .line 81
    new-instance v6, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda4;

    .line 82
    .line 83
    const/4 v7, 0x2

    .line 84
    invoke-direct {v6, v7, p2}, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    :cond_3
    new-instance v6, Lcom/android/internal/util/IndentingPrintWriter;

    .line 92
    .line 93
    const-string v7, "  "

    .line 94
    .line 95
    invoke-direct {v6, p1, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object v7, p2, Lcom/android/server/om/DumpState;->mField:Ljava/lang/String;

    .line 99
    .line 100
    if-eqz v7, :cond_4

    .line 101
    .line 102
    new-instance v7, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda7;

    .line 103
    .line 104
    invoke-direct {v7, v0, v6, p2}, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/om/OverlayManagerSettings;Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/om/DumpState;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_4
    new-instance v7, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda8;

    .line 112
    .line 113
    invoke-direct {v7, v0, v6}, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/om/OverlayManagerSettings;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 114
    .line 115
    .line 116
    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 117
    .line 118
    .line 119
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    iget-object v0, p2, Lcom/android/server/om/DumpState;->mField:Ljava/lang/String;

    .line 121
    .line 122
    if-nez v0, :cond_9

    .line 123
    .line 124
    if-eqz v4, :cond_5

    .line 125
    .line 126
    invoke-static {v4}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    goto :goto_3

    .line 131
    :cond_5
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerSettings;->getAllIdentifiersAndBaseCodePaths()Ljava/util/Set;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    :goto_3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    if-eqz v3, :cond_9

    .line 146
    .line 147
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    check-cast v3, Landroid/util/Pair;

    .line 152
    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    const-string v6, "IDMAP OF "

    .line 156
    .line 157
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 161
    .line 162
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    .line 173
    .line 174
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v6, Ljava/lang/String;

    .line 177
    .line 178
    iget-object v5, v5, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    .line 179
    .line 180
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    const-string v7, "idmap2d service is not ready for dumpIdmap()"

    .line 184
    .line 185
    const-string v8, "OverlayManager"

    .line 186
    .line 187
    :try_start_1
    invoke-virtual {v5}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    .line 188
    .line 189
    .line 190
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 191
    :try_start_2
    iget-object v9, v5, Lcom/android/server/om/IdmapDaemon$Connection;->mIdmap2:Landroid/os/IIdmap2;

    .line 192
    .line 193
    if-nez v9, :cond_6

    .line 194
    .line 195
    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 196
    .line 197
    .line 198
    :goto_5
    :try_start_3
    invoke-virtual {v5}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 199
    .line 200
    .line 201
    goto :goto_9

    .line 202
    :catch_0
    move-exception v5

    .line 203
    goto :goto_8

    .line 204
    :catchall_1
    move-exception v6

    .line 205
    goto :goto_6

    .line 206
    :cond_6
    :try_start_4
    invoke-interface {v9, v6}, Landroid/os/IIdmap2;->dumpIdmap(Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v6

    .line 210
    invoke-static {v6}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 214
    goto :goto_5

    .line 215
    :goto_6
    :try_start_5
    invoke-virtual {v5}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 216
    .line 217
    .line 218
    goto :goto_7

    .line 219
    :catchall_2
    move-exception v5

    .line 220
    :try_start_6
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 221
    .line 222
    .line 223
    :goto_7
    throw v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 224
    :goto_8
    const-string v6, "failed to dump idmap"

    .line 225
    .line 226
    invoke-static {v8, v6, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    .line 228
    .line 229
    move-object v7, v2

    .line 230
    :goto_9
    if-eqz v7, :cond_7

    .line 231
    .line 232
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    goto :goto_4

    .line 236
    :cond_7
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 237
    .line 238
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast v3, Landroid/content/om/OverlayIdentifier;

    .line 241
    .line 242
    invoke-virtual {v5, v3, v1}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    if-eqz v3, :cond_8

    .line 247
    .line 248
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    .line 249
    .line 250
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    iget-object v6, v3, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    .line 254
    .line 255
    iget v3, v3, Landroid/content/om/OverlayInfo;->userId:I

    .line 256
    .line 257
    iget-object v5, v5, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    .line 258
    .line 259
    invoke-virtual {v5, v3, v6}, Lcom/android/server/om/IdmapDaemon;->idmapExists(ILjava/lang/String;)Z

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    if-nez v3, :cond_8

    .line 264
    .line 265
    const-string v3, "<missing idmap>"

    .line 266
    .line 267
    goto :goto_a

    .line 268
    :cond_8
    const-string v3, "<internal error>"

    .line 269
    .line 270
    :goto_a
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    goto/16 :goto_4

    .line 274
    .line 275
    :cond_9
    if-nez v4, :cond_a

    .line 276
    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    const-string v2, "Default overlays: "

    .line 280
    .line 281
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    const-string v2, ";"

    .line 285
    .line 286
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    .line 287
    .line 288
    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    invoke-static {v0, v2, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 293
    .line 294
    .line 295
    :cond_a
    iget-object p2, p2, Lcom/android/server/om/DumpState;->mPackageName:Ljava/lang/String;

    .line 296
    .line 297
    if-nez p2, :cond_b

    .line 298
    .line 299
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    .line 300
    .line 301
    invoke-virtual {p2, p1}, Lcom/android/internal/content/om/OverlayConfig;->dump(Ljava/io/PrintWriter;)V

    .line 302
    .line 303
    .line 304
    :cond_b
    const-string p2, "log"

    .line 305
    .line 306
    const-string v0, "lom_log.txt"

    .line 307
    .line 308
    invoke-static {p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->getDataFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 309
    .line 310
    .line 311
    move-result-object p2

    .line 312
    const-string v0, "lom_log.txt"

    .line 313
    .line 314
    invoke-static {p1, p2, v0, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->dumpFile(Ljava/io/PrintWriter;Ljava/io/File;Ljava/lang/String;I)V

    .line 315
    .line 316
    .line 317
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 318
    .line 319
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()[I

    .line 320
    .line 321
    .line 322
    move-result-object p0

    .line 323
    array-length p2, p0

    .line 324
    move v0, v1

    .line 325
    :goto_b
    if-ge v0, p2, :cond_c

    .line 326
    .line 327
    aget v2, p0, v0

    .line 328
    .line 329
    new-instance v3, Ljava/lang/StringBuilder;

    .line 330
    .line 331
    const-string v4, "/overlays/current_locale_apks/locale_preferences_"

    .line 332
    .line 333
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    const-string v4, "/"

    .line 340
    .line 341
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v3

    .line 348
    const-string v4, "current_locale_overlays"

    .line 349
    .line 350
    invoke-static {v3, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->getDataFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    const-string v4, "current_locale_overlays"

    .line 355
    .line 356
    invoke-static {p1, v3, v4, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->dumpFile(Ljava/io/PrintWriter;Ljava/io/File;Ljava/lang/String;I)V

    .line 357
    .line 358
    .line 359
    add-int/lit8 v0, v0, 0x1

    .line 360
    .line 361
    goto :goto_b

    .line 362
    :cond_c
    const-string p0, "/overlays/current_locale_apks/locale_preferences_0/"

    .line 363
    .line 364
    const-string p2, "locale_overlay_preferences.xml"

    .line 365
    .line 366
    invoke-static {p0, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getDataFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 367
    .line 368
    .line 369
    move-result-object p0

    .line 370
    const-string p2, "locale_overlay_preferences.xml"

    .line 371
    .line 372
    invoke-static {p1, p0, p2, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->dumpFile(Ljava/io/PrintWriter;Ljava/io/File;Ljava/lang/String;I)V

    .line 373
    .line 374
    .line 375
    return-void

    .line 376
    :goto_c
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 377
    throw p0
.end method

.method public final getEnabledOverlayPaths(ILjava/lang/String;Z)Landroid/content/pm/overlay/OverlayPaths;
    .locals 7

    .line 1
    new-instance v0, Landroid/content/pm/overlay/OverlayPaths$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/pm/overlay/OverlayPaths$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_0
    if-ge v3, v2, :cond_7

    .line 21
    .line 22
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 29
    .line 30
    iget v5, v4, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mUserId:I

    .line 31
    .line 32
    if-eq v5, p1, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    if-eqz p2, :cond_1

    .line 36
    .line 37
    iget-object v5, v4, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetPackageName:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-nez v5, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-static {v4}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$mgetOverlayInfo(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v4}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-nez v5, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    if-nez p3, :cond_3

    .line 58
    .line 59
    iget-boolean v5, v4, Landroid/content/om/OverlayInfo;->isMutable:Z

    .line 60
    .line 61
    if-nez v5, :cond_3

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    invoke-virtual {v4}, Landroid/content/om/OverlayInfo;->isFabricated()Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_5

    .line 69
    .line 70
    iget-object v5, v4, Landroid/content/om/OverlayInfo;->overlayName:Ljava/lang/String;

    .line 71
    .line 72
    const-string v6, "ThemePark_"

    .line 73
    .line 74
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-eqz v5, :cond_4

    .line 79
    .line 80
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    iget-object v4, v4, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v0, v4}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addNonApkPath(Ljava/lang/String;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_5
    const/4 v5, 0x2

    .line 91
    invoke-static {v4, v5}, Landroid/content/om/OverlayInfoExt;->isOverlayInfoExtOfCategory(Landroid/content/om/OverlayInfo;I)Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-eqz v5, :cond_6

    .line 96
    .line 97
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_6
    iget-object v4, v4, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v0, v4}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addApkPath(Ljava/lang/String;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    .line 104
    .line 105
    .line 106
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-eqz p1, :cond_9

    .line 118
    .line 119
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    check-cast p1, Landroid/content/om/OverlayInfo;

    .line 124
    .line 125
    iget-boolean p2, p1, Landroid/content/om/OverlayInfo;->isFabricated:Z

    .line 126
    .line 127
    if-eqz p2, :cond_8

    .line 128
    .line 129
    iget-object p1, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v0, p1}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addNonApkPath(Ljava/lang/String;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_8
    iget-object p1, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v0, p1}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addApkPath(Ljava/lang/String;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_9
    invoke-virtual {v0}, Landroid/content/pm/overlay/OverlayPaths$Builder;->build()Landroid/content/pm/overlay/OverlayPaths;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    return-object p0
.end method

.method public final mustReinitializeOverlay(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/om/OverlayInfo;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p2, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    return v0

    .line 18
    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTargetOverlayableName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p2, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    return v0

    .line 31
    :cond_2
    iget-boolean v1, p2, Landroid/content/om/OverlayInfo;->isFabricated:Z

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    return v0

    .line 36
    :cond_3
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    .line 37
    .line 38
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Lcom/android/internal/content/om/OverlayConfig;->isMutable(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    iget-boolean v2, p2, Landroid/content/om/OverlayInfo;->isMutable:Z

    .line 47
    .line 48
    if-eq v1, v2, :cond_4

    .line 49
    .line 50
    return v0

    .line 51
    :cond_4
    if-nez v1, :cond_5

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    .line 54
    .line 55
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/internal/content/om/OverlayConfig;->isEnabled(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    invoke-virtual {p2}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eq p0, p1, :cond_5

    .line 68
    .line 69
    return v0

    .line 70
    :cond_5
    const/4 p0, 0x0

    .line 71
    return p0
.end method

.method public final onPackageRemoved(ILjava/lang/String;Z)Ljava/util/Set;
    .locals 3

    .line 1
    const-string/jumbo v0, "onPackageRemoved: pkgName = ["

    .line 2
    .line 3
    .line 4
    const-string v1, "], userId = ["

    .line 5
    .line 6
    const-string v2, "], packageHidden = ["

    .line 7
    .line 8
    invoke-static {p1, v0, p2, v1, v2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "]"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "OverlayManager"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    if-eqz p3, :cond_0

    .line 30
    .line 31
    const/16 p3, 0x10

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p3, 0x0

    .line 35
    :goto_0
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForTarget(IILjava/lang/String;)Ljava/util/Set;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    new-instance v0, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda0;

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    invoke-direct {v0, v1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeOverlaysForUser(ILjava/util/function/Predicate;)Ljava/util/Set;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {p3, p0}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method

.method public final reconcileSettingsForPackage(IILjava/lang/String;)Ljava/util/Set;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "reconcileSettingsForPackage pkgName="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, " userId="

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "OverlayManager"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForTarget(IILjava/lang/String;)Ljava/util/Set;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    .line 42
    .line 43
    invoke-virtual {v1, p1, p3}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->getPackageStateForUser(ILjava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-nez v1, :cond_0

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    :goto_0
    if-nez v1, :cond_1

    .line 56
    .line 57
    const/4 p2, 0x0

    .line 58
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onPackageRemoved(ILjava/lang/String;Z)Ljava/util/Set;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    :cond_1
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->updatePackageOverlays(Lcom/android/server/pm/pkg/AndroidPackage;II)Ljava/util/Set;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {v0, p0}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0
.end method

.method public final registerFabricatedOverlay(Landroid/os/FabricatedOverlayInfo;I)Ljava/util/Set;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v14, p2

    .line 17
    new-instance v15, Landroid/content/om/OverlayIdentifier;

    iget-object v2, v1, Landroid/os/FabricatedOverlayInfo;->packageName:Ljava/lang/String;

    iget-object v3, v1, Landroid/os/FabricatedOverlayInfo;->overlayName:Ljava/lang/String;

    invoke-direct {v15, v2, v3}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    .line 19
    iget-object v12, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v12, v15, v14}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 20
    iget-boolean v3, v2, Landroid/content/om/OverlayInfo;->isFabricated:Z

    if-eqz v3, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "non-fabricated overlay with name \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/content/om/OverlayInfo;->overlayName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' already present in \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    const-string v3, "\'"

    .line 22
    invoke-static {v1, v2, v3}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v11, 0x0

    const/4 v10, 0x1

    if-nez v2, :cond_2

    goto :goto_1

    .line 24
    :cond_2
    :try_start_0
    iget-object v3, v1, Landroid/os/FabricatedOverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 25
    :cond_3
    iget-object v3, v1, Landroid/os/FabricatedOverlayInfo;->targetOverlayable:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :goto_1
    if-eqz v2, :cond_4

    .line 26
    iget-object v2, v2, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {v14, v2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_8

    .line 27
    :cond_4
    :goto_2
    iget-object v2, v1, Landroid/os/FabricatedOverlayInfo;->overlayName:Ljava/lang/String;

    if-eqz v2, :cond_6

    const-string v3, "SemWT_"

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 29
    invoke-virtual {v12, v15, v11}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 30
    invoke-virtual {v2}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v10

    goto :goto_3

    :cond_5
    move v2, v11

    :goto_3
    move v9, v2

    goto :goto_4

    :cond_6
    move v9, v11

    .line 31
    :goto_4
    iget-object v5, v1, Landroid/os/FabricatedOverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v6, v1, Landroid/os/FabricatedOverlayInfo;->targetOverlayable:Ljava/lang/String;

    iget-object v7, v1, Landroid/os/FabricatedOverlayInfo;->path:Ljava/lang/String;

    .line 32
    invoke-virtual {v12, v15, v14}, Lcom/android/server/om/OverlayManagerSettings;->remove(Landroid/content/om/OverlayIdentifier;I)Z

    .line 33
    new-instance v8, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    const/16 v16, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x1

    const v20, 0x7fffffff

    move-object v2, v8

    move-object v3, v15

    move/from16 v4, p2

    move-object/from16 v21, v8

    move/from16 v8, v16

    move/from16 v10, v19

    move/from16 v11, v20

    move-object/from16 v22, v12

    move-object/from16 v12, v17

    move-object/from16 v23, v13

    move/from16 v13, v18

    invoke-direct/range {v2 .. v13}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;-><init>(Landroid/content/om/OverlayIdentifier;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZILjava/lang/String;Z)V

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    .line 34
    invoke-virtual {v3, v2}, Lcom/android/server/om/OverlayManagerSettings;->insert(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)V

    .line 35
    invoke-static {v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$mgetOverlayInfo(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;

    move-result-object v2

    goto :goto_5

    :cond_7
    move-object v3, v12

    move-object/from16 v23, v13

    .line 36
    iget-object v4, v1, Landroid/os/FabricatedOverlayInfo;->path:Ljava/lang/String;

    invoke-virtual {v3, v14, v15, v4}, Lcom/android/server/om/OverlayManagerSettings;->setBaseCodePath(ILandroid/content/om/OverlayIdentifier;Ljava/lang/String;)Z

    .line 37
    :goto_5
    invoke-static {}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->isInMaintenanceModeFromProperty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 38
    sget-object v4, Lcom/android/server/om/SemSamsungThemeUtils;->disableOverlayList:Ljava/util/List;

    .line 39
    iget-object v1, v1, Landroid/os/FabricatedOverlayInfo;->overlayName:Ljava/lang/String;

    if-eqz v1, :cond_8

    sget-object v4, Lcom/android/server/om/SemSamsungThemeUtils;->disableOverlayList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 40
    new-instance v1, Landroid/content/om/OverlayIdentifier;

    const-string v4, "android"

    const-string v5, "SemWT_G_MonetPalette"

    invoke-direct {v1, v4, v5}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 41
    invoke-virtual {v3, v1, v4}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 42
    invoke-virtual {v1}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    .line 43
    invoke-virtual {v0, v14, v15, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabled(ILandroid/content/om/OverlayIdentifier;Z)Ljava/util/Set;

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    .line 44
    :cond_9
    :goto_6
    invoke-virtual {v0, v2, v14, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/CriticalOverlayInfo;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 45
    iget-object v0, v2, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {v14, v0}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v0

    move-object/from16 v1, v23

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :cond_a
    move-object/from16 v1, v23

    :goto_7
    return-object v1

    .line 46
    :goto_8
    new-instance v1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    .line 47
    const-string v2, "failed to update settings"

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    throw v1
.end method

.method public final registerFabricatedOverlay(Landroid/os/FabricatedOverlayInternal;)Ljava/util/Set;
    .locals 6

    .line 1
    iget-object v0, p1, Landroid/os/FabricatedOverlayInternal;->overlayName:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    iget-object v0, v0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-string v2, "OverlayManager"

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    iget-object v4, v0, Lcom/android/server/om/IdmapDaemon$Connection;->mIdmap2:Landroid/os/IIdmap2;

    if-nez v4, :cond_0

    .line 6
    const-string v4, "idmap2d service is not ready for createFabricatedOverlay()"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v4

    goto :goto_0

    .line 8
    :cond_0
    :try_start_3
    invoke-interface {v4, p1}, Landroid/os/IIdmap2;->createFabricatedOverlay(Landroid/os/FabricatedOverlayInternal;)Landroid/os/FabricatedOverlayInfo;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 9
    :try_start_4
    invoke-virtual {v0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v3, v4

    goto :goto_3

    .line 10
    :goto_0
    :try_start_5
    invoke-virtual {v0}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 11
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "failed to fabricate overlay "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    if-eqz v3, :cond_2

    .line 12
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 13
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()[I

    move-result-object v0

    array-length v2, v0

    :goto_4
    if-ge v1, v2, :cond_1

    aget v4, v0, v1

    .line 14
    invoke-virtual {p0, v3, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->registerFabricatedOverlay(Landroid/os/FabricatedOverlayInfo;I)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_1
    return-object p1

    .line 15
    :cond_2
    new-instance p0, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string p1, "failed to create fabricated overlay"

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_3
    new-instance p0, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    const-string/jumbo p1, "overlay name can only consist of alphanumeric characters, \'_\', and \'.\'"

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final removeIdmapForOverlay(Landroid/content/om/OverlayIdentifier;I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catch_0
    move-exception p0

    .line 12
    new-instance p1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    .line 13
    .line 14
    const-string p2, "failed to update settings"

    .line 15
    .line 16
    invoke-direct {p1, p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    throw p1
.end method

.method public final removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    .line 7
    .line 8
    iget v2, p1, Landroid/content/om/OverlayInfo;->userId:I

    .line 9
    .line 10
    iget-object v3, v0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    .line 11
    .line 12
    invoke-virtual {v3, v2, v1}, Lcom/android/server/om/IdmapDaemon;->idmapExists(ILjava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()[I

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    array-length v2, v1

    .line 26
    const/4 v3, 0x0

    .line 27
    :goto_0
    if-ge v3, v2, :cond_2

    .line 28
    .line 29
    aget v4, v1, v3

    .line 30
    .line 31
    :try_start_0
    invoke-virtual {p1}, Landroid/content/om/OverlayInfo;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {p0, v5, v4}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    invoke-virtual {v4}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    .line 42
    .line 43
    .line 44
    move-result v4
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    if-eqz v4, :cond_1

    .line 46
    .line 47
    return-void

    .line 48
    :catch_0
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget p0, p1, Landroid/content/om/OverlayInfo;->userId:I

    .line 52
    .line 53
    invoke-virtual {v0, p1, p0}, Lcom/android/server/om/IdmapManager;->removeIdmap(Landroid/content/om/OverlayInfo;I)Z

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final removeOverlaysForUser(ILjava/util/function/Predicate;)Ljava/util/Set;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda3;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda3;-><init>(ILjava/util/function/Predicate;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Lcom/android/server/om/OverlayManagerSettings;->removeIf(Ljava/util/function/Predicate;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-ge v2, v1, :cond_0

    .line 22
    .line 23
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Landroid/content/om/OverlayInfo;

    .line 28
    .line 29
    iget-object v4, v3, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {p1, v4}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-static {v0, v4}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p0, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    .line 40
    .line 41
    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    return-object v0
.end method

.method public final setEnabled(ILandroid/content/om/OverlayIdentifier;Z)Ljava/util/Set;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 2
    .line 3
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    filled-new-array {p2, v1, v2}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string/jumbo v2, "setEnabled overlay=%s enable=%s userId=%d"

    .line 16
    .line 17
    .line 18
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "OverlayManager"

    .line 23
    .line 24
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :try_start_0
    invoke-virtual {v0, p2, p1}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-boolean v2, v1, Landroid/content/om/OverlayInfo;->isMutable:Z

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(ILandroid/content/om/OverlayIdentifier;Z)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    const/4 p3, 0x0

    .line 40
    invoke-virtual {p0, v1, p1, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/CriticalOverlayInfo;II)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    or-int/2addr p0, p2

    .line 45
    if-eqz p0, :cond_0

    .line 46
    .line 47
    iget-object p0, v1, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {p1, p0}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {p0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :cond_1
    new-instance p0, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    .line 66
    .line 67
    const-string p1, "cannot enable immutable overlay packages in runtime"

    .line 68
    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p0
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    new-instance p1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    .line 74
    .line 75
    const-string p2, "failed to update settings"

    .line 76
    .line 77
    invoke-direct {p1, p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    throw p1
.end method

.method public final setEnabledExclusive(ILandroid/content/om/OverlayIdentifier;Z)Ljava/util/Optional;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 2
    .line 3
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    filled-new-array {p2, v1, v2}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string/jumbo v2, "setEnabledExclusive overlay=%s withinCategory=%s userId=%d"

    .line 16
    .line 17
    .line 18
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "OverlayManager"

    .line 23
    .line 24
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :try_start_0
    invoke-virtual {v0, p2, p1}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-boolean v2, v1, Landroid/content/om/OverlayInfo;->isMutable:Z

    .line 32
    .line 33
    if-eqz v2, :cond_4

    .line 34
    .line 35
    iget-object v2, v1, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, p1, v2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(ILjava/lang/String;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    move v4, v3

    .line 46
    move v5, v4

    .line 47
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-ge v4, v6, :cond_2

    .line 52
    .line 53
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    check-cast v6, Landroid/content/om/OverlayInfo;

    .line 58
    .line 59
    invoke-virtual {v6}, Landroid/content/om/OverlayInfo;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    iget-boolean v8, v6, Landroid/content/om/OverlayInfo;->isMutable:Z

    .line 64
    .line 65
    if-nez v8, :cond_0

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_0
    if-eqz p3, :cond_1

    .line 69
    .line 70
    iget-object v8, v6, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    .line 71
    .line 72
    iget-object v9, v1, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    if-nez v8, :cond_1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catch_0
    move-exception p0

    .line 82
    goto :goto_2

    .line 83
    :cond_1
    invoke-virtual {v0, p1, v7, v3}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(ILandroid/content/om/OverlayIdentifier;Z)Z

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    or-int/2addr v5, v7

    .line 88
    invoke-virtual {p0, v6, p1, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/CriticalOverlayInfo;II)Z

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    or-int/2addr v5, v6

    .line 93
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    const/4 p3, 0x1

    .line 97
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(ILandroid/content/om/OverlayIdentifier;Z)Z

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    or-int/2addr p2, v5

    .line 102
    invoke-virtual {p0, v1, p1, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/CriticalOverlayInfo;II)Z

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    or-int/2addr p0, p2

    .line 107
    if-eqz p0, :cond_3

    .line 108
    .line 109
    iget-object p0, v1, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 110
    .line 111
    invoke-static {p1, p0}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    return-object p0

    .line 120
    :cond_3
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    return-object p0

    .line 125
    :cond_4
    new-instance p0, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    .line 126
    .line 127
    const-string p1, "cannot enable immutable overlay packages in runtime"

    .line 128
    .line 129
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p0
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_2
    new-instance p1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    .line 134
    .line 135
    const-string p2, "failed to update settings"

    .line 136
    .line 137
    invoke-direct {p1, p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    .line 139
    .line 140
    throw p1
.end method

.method public final setHighestPriority(Landroid/content/om/OverlayIdentifier;I)Ljava/util/Set;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 2
    .line 3
    const-string/jumbo v0, "setHighestPriority overlay="

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "OverlayManager"

    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v0, " userId="

    .line 17
    .line 18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-boolean v1, v0, Landroid/content/om/OverlayInfo;->isMutable:Z

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->setHighestPriority(Landroid/content/om/OverlayIdentifier;I)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_0

    .line 44
    .line 45
    iget-object p0, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {p2, p0}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {p0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :catch_0
    move-exception p0

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    :cond_1
    new-instance p0, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    .line 64
    .line 65
    const-string p1, "cannot change priority of an immutable overlay package at runtime"

    .line 66
    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p0
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    new-instance p1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    .line 72
    .line 73
    const-string p2, "failed to update settings"

    .line 74
    .line 75
    invoke-direct {p1, p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    throw p1
.end method

.method public final setLowestPriority(Landroid/content/om/OverlayIdentifier;I)Ljava/util/Optional;
    .locals 3

    .line 1
    const-string/jumbo v0, "setLowestPriority packageName="

    .line 2
    .line 3
    .line 4
    :try_start_0
    const-string v1, "OverlayManager"

    .line 5
    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v0, " userId="

    .line 15
    .line 16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 30
    .line 31
    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-boolean v1, v0, Landroid/content/om/OverlayInfo;->isMutable:Z

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter v1
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Landroid/content/om/OverlayIdentifier;I)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-gtz p1, :cond_0

    .line 49
    .line 50
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :try_start_2
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 52
    .line 53
    .line 54
    move-result-object p0
    :try_end_2
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_2 .. :try_end_2} :catch_0

    .line 55
    return-object p0

    .line 56
    :catch_0
    move-exception p0

    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 67
    .line 68
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    .line 74
    .line 75
    const/4 v2, 0x0

    .line 76
    invoke-virtual {p0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    :try_start_4
    iget-object p0, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {p2, p0}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 87
    .line 88
    .line 89
    move-result-object p0
    :try_end_4
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_4 .. :try_end_4} :catch_0

    .line 90
    return-object p0

    .line 91
    :goto_0
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 92
    :try_start_6
    throw p0

    .line 93
    :cond_1
    new-instance p0, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    .line 94
    .line 95
    const-string p1, "cannot change priority of an immutable overlay package at runtime"

    .line 96
    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p0
    :try_end_6
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_6 .. :try_end_6} :catch_0

    .line 101
    :goto_1
    new-instance p1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    .line 102
    .line 103
    const-string p2, "failed to update settings"

    .line 104
    .line 105
    invoke-direct {p1, p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .line 107
    .line 108
    throw p1
.end method

.method public final setPriority(Landroid/content/om/OverlayIdentifier;Landroid/content/om/OverlayIdentifier;I)Ljava/util/Optional;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 2
    .line 3
    const-string/jumbo v0, "setPriority overlay="

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "OverlayManager"

    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v0, " newParentOverlay="

    .line 17
    .line 18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, " userId="

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-boolean v1, v0, Landroid/content/om/OverlayInfo;->isMutable:Z

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->setPriority(Landroid/content/om/OverlayIdentifier;Landroid/content/om/OverlayIdentifier;I)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_0

    .line 52
    .line 53
    iget-object p0, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {p3, p0}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    :catch_0
    move-exception p0

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :cond_1
    new-instance p0, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    .line 72
    .line 73
    const-string p1, "cannot change priority of an immutable overlay package at runtime"

    .line 74
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p0
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    new-instance p1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    .line 80
    .line 81
    const-string p2, "failed to update settings"

    .line 82
    .line 83
    invoke-direct {p1, p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    throw p1
.end method

.method public final unregisterFabricatedOverlay(Landroid/content/om/OverlayIdentifier;)Ljava/util/Set;
    .locals 7

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()[I

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    array-length v2, v1

    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_0
    if-ge v3, v2, :cond_1

    .line 15
    .line 16
    aget v4, v1, v3

    .line 17
    .line 18
    invoke-virtual {p0, p1, v4}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, p1, v4}, Lcom/android/server/om/OverlayManagerSettings;->remove(Landroid/content/om/OverlayIdentifier;I)Z

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    if-eqz v6, :cond_0

    .line 32
    .line 33
    iget-object v5, v5, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v4, v5}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-static {v4}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    :goto_1
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 49
    .line 50
    .line 51
    add-int/lit8 v3, v3, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    return-object v0
.end method

.method public final updateOverlaysForTarget(IILjava/lang/String;)Ljava/util/Set;
    .locals 9

    .line 1
    const-string/jumbo v0, "updateOverlaysForTarget() called with: targetPackage = ["

    .line 2
    .line 3
    .line 4
    const-string v1, "], userId = ["

    .line 5
    .line 6
    const-string v2, "], flags = ["

    .line 7
    .line 8
    invoke-static {p1, v0, p3, v1, v2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "]"

    .line 13
    .line 14
    const-string v2, "OverlayManager"

    .line 15
    .line 16
    invoke-static {v0, p2, v1, v2}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 20
    .line 21
    invoke-virtual {v0, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(ILjava/lang/String;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, 0x0

    .line 30
    move v5, v4

    .line 31
    :goto_0
    if-ge v4, v3, :cond_0

    .line 32
    .line 33
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    check-cast v6, Landroid/content/om/OverlayInfo;

    .line 38
    .line 39
    :try_start_0
    invoke-virtual {p0, v6, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/CriticalOverlayInfo;II)Z

    .line 40
    .line 41
    .line 42
    move-result v6
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_1
    or-int/2addr v5, v6

    .line 44
    goto :goto_2

    .line 45
    :catch_0
    move-exception v7

    .line 46
    const-string v8, "failed to update settings"

    .line 47
    .line 48
    invoke-static {v2, v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    .line 50
    .line 51
    invoke-virtual {v6}, Landroid/content/om/OverlayInfo;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-virtual {v0, v6, p1}, Lcom/android/server/om/OverlayManagerSettings;->remove(Landroid/content/om/OverlayIdentifier;I)Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    goto :goto_1

    .line 60
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    if-nez v5, :cond_1

    .line 64
    .line 65
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0

    .line 70
    :cond_1
    invoke-static {p1, p3}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {p0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0
.end method

.method public final updateOverlaysForUser(I)Landroid/util/ArraySet;
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    new-instance v2, Landroid/util/ArraySet;

    .line 4
    .line 5
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    .line 9
    .line 10
    iget-object v4, v3, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    .line 11
    .line 12
    monitor-enter v4

    .line 13
    :try_start_0
    iget-object v5, v3, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mInitializedUsers:Landroid/util/ArraySet;

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-eqz v5, :cond_0

    .line 24
    .line 25
    iget-object v5, v3, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 26
    .line 27
    new-instance v6, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$$ExternalSyntheticLambda0;

    .line 28
    .line 29
    invoke-direct {v6, v3, p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManagerInternal;->forEachPackageState(Ljava/util/function/Consumer;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto/16 :goto_12

    .line 38
    .line 39
    :cond_0
    :goto_0
    new-instance v5, Landroid/util/ArrayMap;

    .line 40
    .line 41
    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 42
    .line 43
    .line 44
    iget-object v6, v3, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    .line 45
    .line 46
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    move v7, v0

    .line 51
    :goto_1
    if-ge v7, v6, :cond_2

    .line 52
    .line 53
    iget-object v8, v3, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    .line 54
    .line 55
    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    check-cast v8, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;

    .line 60
    .line 61
    iget-object v9, v8, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;->mInstalledUsers:Ljava/util/Set;

    .line 62
    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v10

    .line 67
    check-cast v9, Landroid/util/ArraySet;

    .line 68
    .line 69
    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v9

    .line 73
    if-eqz v9, :cond_1

    .line 74
    .line 75
    iget-object v9, v3, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    .line 76
    .line 77
    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    check-cast v9, Ljava/lang/String;

    .line 82
    .line 83
    iget-object v8, v8, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;->mPackageState:Lcom/android/server/pm/pkg/PackageState;

    .line 84
    .line 85
    invoke-virtual {v5, v9, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    :cond_1
    add-int/2addr v7, v1

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    new-instance v3, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda0;

    .line 92
    .line 93
    invoke-direct {v3, v0, v5}, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, p1, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeOverlaysForUser(ILjava/util/function/Predicate;)Ljava/util/Set;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-static {v2, v3}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    .line 101
    .line 102
    .line 103
    new-instance v3, Landroid/util/ArraySet;

    .line 104
    .line 105
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    if-eqz v6, :cond_5

    .line 121
    .line 122
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    check-cast v6, Lcom/android/server/pm/pkg/PackageState;

    .line 127
    .line 128
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    if-nez v6, :cond_4

    .line 133
    .line 134
    const/4 v6, 0x0

    .line 135
    goto :goto_3

    .line 136
    :cond_4
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    :goto_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    if-nez v7, :cond_3

    .line 145
    .line 146
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_5
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    move v6, v0

    .line 155
    :goto_4
    if-ge v6, v4, :cond_8

    .line 156
    .line 157
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    check-cast v7, Lcom/android/server/pm/pkg/PackageState;

    .line 162
    .line 163
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    if-nez v8, :cond_6

    .line 168
    .line 169
    goto :goto_5

    .line 170
    :cond_6
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    :try_start_1
    invoke-virtual {p0, v8, p1, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updatePackageOverlays(Lcom/android/server/pm/pkg/AndroidPackage;II)Ljava/util/Set;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    invoke-static {v2, v8}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v8

    .line 185
    if-eqz v8, :cond_7

    .line 186
    .line 187
    invoke-static {p1, v7}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 188
    .line 189
    .line 190
    move-result-object v8

    .line 191
    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 192
    .line 193
    .line 194
    goto :goto_5

    .line 195
    :catch_0
    move-exception v8

    .line 196
    const-string v9, "OverlayManager"

    .line 197
    .line 198
    const-string v10, "failed to initialize overlays of \'"

    .line 199
    .line 200
    const-string v11, "\' for user "

    .line 201
    .line 202
    const-string v12, ""

    .line 203
    .line 204
    invoke-static {p1, v10, v7, v11, v12}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v7

    .line 208
    invoke-static {v9, v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    .line 210
    .line 211
    :cond_7
    :goto_5
    add-int/2addr v6, v1

    .line 212
    goto :goto_4

    .line 213
    :cond_8
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 214
    .line 215
    invoke-virtual {v3}, Lcom/android/server/om/OverlayManagerSettings;->getAllBaseCodePaths()Ljava/util/Set;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    new-instance v4, Ljava/util/ArrayList;

    .line 220
    .line 221
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    .line 222
    .line 223
    invoke-virtual {v5}, Lcom/android/server/om/IdmapManager;->getFabricatedOverlayInfos()Ljava/util/List;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 228
    .line 229
    .line 230
    new-instance v5, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda0;

    .line 231
    .line 232
    const/4 v6, 0x2

    .line 233
    invoke-direct {v5, v6, v3}, Lcom/android/server/om/OverlayManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 237
    .line 238
    .line 239
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    :cond_9
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 244
    .line 245
    .line 246
    move-result v4

    .line 247
    if-eqz v4, :cond_c

    .line 248
    .line 249
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    check-cast v4, Landroid/os/FabricatedOverlayInfo;

    .line 254
    .line 255
    :try_start_2
    invoke-static {}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->isInMaintenanceModeFromProperty()Z

    .line 256
    .line 257
    .line 258
    move-result v5

    .line 259
    if-eqz v5, :cond_b

    .line 260
    .line 261
    sget-object v5, Lcom/android/server/om/SemSamsungThemeUtils;->disableOverlayList:Ljava/util/List;

    .line 262
    .line 263
    iget-object v5, v4, Landroid/os/FabricatedOverlayInfo;->overlayName:Ljava/lang/String;

    .line 264
    .line 265
    if-eqz v5, :cond_a

    .line 266
    .line 267
    const-string v6, "SemWT_"

    .line 268
    .line 269
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 270
    .line 271
    .line 272
    move-result v5

    .line 273
    if-eqz v5, :cond_a

    .line 274
    .line 275
    goto :goto_7

    .line 276
    :cond_a
    iget-object v5, v4, Landroid/os/FabricatedOverlayInfo;->overlayName:Ljava/lang/String;

    .line 277
    .line 278
    if-eqz v5, :cond_b

    .line 279
    .line 280
    sget-object v6, Lcom/android/server/om/SemSamsungThemeUtils;->dynamicColorOverlayList:Ljava/util/List;

    .line 281
    .line 282
    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result v5

    .line 286
    if-eqz v5, :cond_b

    .line 287
    .line 288
    :goto_7
    iget-object v5, v4, Landroid/os/FabricatedOverlayInfo;->overlayName:Ljava/lang/String;

    .line 289
    .line 290
    if-eqz v5, :cond_9

    .line 291
    .line 292
    sget-object v6, Lcom/android/server/om/SemSamsungThemeUtils;->disableOverlayList:Ljava/util/List;

    .line 293
    .line 294
    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v5

    .line 298
    if-eqz v5, :cond_9

    .line 299
    .line 300
    new-instance v5, Landroid/content/om/OverlayIdentifier;

    .line 301
    .line 302
    const-string v6, "android"

    .line 303
    .line 304
    const-string v7, "SemWT_G_MonetPalette"

    .line 305
    .line 306
    invoke-direct {v5, v6, v7}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 310
    .line 311
    invoke-virtual {v6, v5, v0}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    .line 312
    .line 313
    .line 314
    move-result-object v5

    .line 315
    if-eqz v5, :cond_9

    .line 316
    .line 317
    invoke-virtual {v5}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    .line 318
    .line 319
    .line 320
    move-result v5

    .line 321
    if-eqz v5, :cond_9

    .line 322
    .line 323
    new-instance v5, Landroid/content/om/OverlayIdentifier;

    .line 324
    .line 325
    iget-object v6, v4, Landroid/os/FabricatedOverlayInfo;->packageName:Ljava/lang/String;

    .line 326
    .line 327
    iget-object v7, v4, Landroid/os/FabricatedOverlayInfo;->overlayName:Ljava/lang/String;

    .line 328
    .line 329
    invoke-direct {v5, v6, v7}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 330
    .line 331
    .line 332
    :try_start_3
    invoke-virtual {p0, v0, v5, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabled(ILandroid/content/om/OverlayIdentifier;Z)Ljava/util/Set;
    :try_end_3
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 333
    .line 334
    .line 335
    goto :goto_6

    .line 336
    :catch_1
    move-exception v5

    .line 337
    :try_start_4
    new-instance v6, Ljava/lang/RuntimeException;

    .line 338
    .line 339
    invoke-direct {v6, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 340
    .line 341
    .line 342
    throw v6

    .line 343
    :cond_b
    invoke-virtual {p0, v4, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->registerFabricatedOverlay(Landroid/os/FabricatedOverlayInfo;I)Ljava/util/Set;

    .line 344
    .line 345
    .line 346
    move-result-object v5

    .line 347
    invoke-static {v2, v5}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;
    :try_end_4
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_4 .. :try_end_4} :catch_2

    .line 348
    .line 349
    .line 350
    goto :goto_6

    .line 351
    :catch_2
    move-exception v5

    .line 352
    const-string v6, "OverlayManager"

    .line 353
    .line 354
    new-instance v7, Ljava/lang/StringBuilder;

    .line 355
    .line 356
    const-string v8, "failed to initialize fabricated overlay of \'"

    .line 357
    .line 358
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    iget-object v4, v4, Landroid/os/FabricatedOverlayInfo;->path:Ljava/lang/String;

    .line 362
    .line 363
    const-string v8, "\' for user "

    .line 364
    .line 365
    const-string v9, ""

    .line 366
    .line 367
    invoke-static {p1, v4, v8, v9, v7}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    invoke-static {v6, v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 372
    .line 373
    .line 374
    goto/16 :goto_6

    .line 375
    .line 376
    :cond_c
    new-instance v3, Landroid/util/ArraySet;

    .line 377
    .line 378
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 379
    .line 380
    .line 381
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 382
    .line 383
    invoke-virtual {v4, p1}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    .line 384
    .line 385
    .line 386
    move-result-object v4

    .line 387
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 388
    .line 389
    .line 390
    move-result v5

    .line 391
    move v6, v0

    .line 392
    :goto_8
    if-ge v6, v5, :cond_10

    .line 393
    .line 394
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v7

    .line 398
    check-cast v7, Ljava/util/List;

    .line 399
    .line 400
    if-eqz v7, :cond_d

    .line 401
    .line 402
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 403
    .line 404
    .line 405
    move-result v8

    .line 406
    goto :goto_9

    .line 407
    :cond_d
    move v8, v0

    .line 408
    :goto_9
    move v9, v0

    .line 409
    :goto_a
    if-ge v9, v8, :cond_f

    .line 410
    .line 411
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v10

    .line 415
    check-cast v10, Landroid/content/om/OverlayInfo;

    .line 416
    .line 417
    invoke-virtual {v10}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    .line 418
    .line 419
    .line 420
    move-result v11

    .line 421
    if-eqz v11, :cond_e

    .line 422
    .line 423
    iget-object v10, v10, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    .line 424
    .line 425
    invoke-virtual {v3, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 426
    .line 427
    .line 428
    :cond_e
    add-int/2addr v9, v1

    .line 429
    goto :goto_a

    .line 430
    :cond_f
    add-int/2addr v6, v1

    .line 431
    goto :goto_8

    .line 432
    :cond_10
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    .line 433
    .line 434
    array-length v5, v4

    .line 435
    move v6, v0

    .line 436
    :goto_b
    if-ge v6, v5, :cond_12

    .line 437
    .line 438
    aget-object v7, v4, v6

    .line 439
    .line 440
    :try_start_5
    new-instance v8, Landroid/content/om/OverlayIdentifier;

    .line 441
    .line 442
    invoke-direct {v8, v7}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    iget-object v9, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 446
    .line 447
    invoke-virtual {v9, v8, p1}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    .line 448
    .line 449
    .line 450
    move-result-object v9

    .line 451
    iget-object v10, v9, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    .line 452
    .line 453
    invoke-virtual {v3, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    move-result v10

    .line 457
    if-nez v10, :cond_11

    .line 458
    .line 459
    const-string v10, "OverlayManager"

    .line 460
    .line 461
    new-instance v11, Ljava/lang/StringBuilder;

    .line 462
    .line 463
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 464
    .line 465
    .line 466
    const-string v12, "Enabling default overlay \'"

    .line 467
    .line 468
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    const-string v12, "\' for target \'"

    .line 475
    .line 476
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    iget-object v12, v9, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 480
    .line 481
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    const-string v12, "\' in category \'"

    .line 485
    .line 486
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    iget-object v12, v9, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    .line 490
    .line 491
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    const-string v12, "\' for user "

    .line 495
    .line 496
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v11

    .line 506
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    .line 508
    .line 509
    iget-object v10, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 510
    .line 511
    invoke-virtual {v10, p1, v8, v1}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(ILandroid/content/om/OverlayIdentifier;Z)Z

    .line 512
    .line 513
    .line 514
    invoke-virtual {p0, v9, p1, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/CriticalOverlayInfo;II)Z

    .line 515
    .line 516
    .line 517
    move-result v8

    .line 518
    if-eqz v8, :cond_11

    .line 519
    .line 520
    iget v8, v9, Landroid/content/om/OverlayInfo;->userId:I

    .line 521
    .line 522
    iget-object v9, v9, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 523
    .line 524
    invoke-static {v8, v9}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 525
    .line 526
    .line 527
    move-result-object v8

    .line 528
    invoke-static {v2, v8}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;
    :try_end_5
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_5 .. :try_end_5} :catch_3

    .line 529
    .line 530
    .line 531
    goto :goto_c

    .line 532
    :catch_3
    move-exception v8

    .line 533
    const-string v9, "OverlayManager"

    .line 534
    .line 535
    const-string v10, "Failed to set default overlay \'"

    .line 536
    .line 537
    const-string v11, "\' for user "

    .line 538
    .line 539
    invoke-static {p1, v10, v7, v11}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v7

    .line 543
    invoke-static {v9, v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 544
    .line 545
    .line 546
    :cond_11
    :goto_c
    add-int/2addr v6, v1

    .line 547
    goto :goto_b

    .line 548
    :cond_12
    iget-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 549
    .line 550
    invoke-virtual {p1}, Lcom/android/server/om/OverlayManagerSettings;->getAllBaseCodePaths()Ljava/util/Set;

    .line 551
    .line 552
    .line 553
    move-result-object p1

    .line 554
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    .line 555
    .line 556
    invoke-virtual {p0}, Lcom/android/server/om/IdmapManager;->getFabricatedOverlayInfos()Ljava/util/List;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    :cond_13
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 565
    .line 566
    .line 567
    move-result v1

    .line 568
    if-eqz v1, :cond_15

    .line 569
    .line 570
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    move-result-object v1

    .line 574
    check-cast v1, Landroid/os/FabricatedOverlayInfo;

    .line 575
    .line 576
    iget-object v3, v1, Landroid/os/FabricatedOverlayInfo;->path:Ljava/lang/String;

    .line 577
    .line 578
    move-object v4, p1

    .line 579
    check-cast v4, Landroid/util/ArraySet;

    .line 580
    .line 581
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 582
    .line 583
    .line 584
    move-result v3

    .line 585
    if-nez v3, :cond_13

    .line 586
    .line 587
    iget-object v1, v1, Landroid/os/FabricatedOverlayInfo;->path:Ljava/lang/String;

    .line 588
    .line 589
    iget-object v3, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    .line 590
    .line 591
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 592
    .line 593
    .line 594
    const-string v4, "OverlayManager"

    .line 595
    .line 596
    const-string v5, "idmap2d service is not ready for deleteFabricatedOverlay(\""

    .line 597
    .line 598
    :try_start_6
    invoke-virtual {v3}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    .line 599
    .line 600
    .line 601
    move-result-object v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 602
    :try_start_7
    iget-object v6, v3, Lcom/android/server/om/IdmapDaemon$Connection;->mIdmap2:Landroid/os/IIdmap2;

    .line 603
    .line 604
    if-nez v6, :cond_14

    .line 605
    .line 606
    new-instance v6, Ljava/lang/StringBuilder;

    .line 607
    .line 608
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    const-string v5, "\")"

    .line 615
    .line 616
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    .line 618
    .line 619
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v5

    .line 623
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 624
    .line 625
    .line 626
    :goto_e
    :try_start_8
    invoke-virtual {v3}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 627
    .line 628
    .line 629
    goto :goto_d

    .line 630
    :catch_4
    move-exception v3

    .line 631
    goto :goto_11

    .line 632
    :catchall_1
    move-exception v5

    .line 633
    goto :goto_f

    .line 634
    :cond_14
    :try_start_9
    invoke-interface {v6, v1}, Landroid/os/IIdmap2;->deleteFabricatedOverlay(Ljava/lang/String;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 635
    .line 636
    .line 637
    goto :goto_e

    .line 638
    :goto_f
    :try_start_a
    invoke-virtual {v3}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 639
    .line 640
    .line 641
    goto :goto_10

    .line 642
    :catchall_2
    move-exception v3

    .line 643
    :try_start_b
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 644
    .line 645
    .line 646
    :goto_10
    throw v5
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 647
    :goto_11
    new-instance v5, Ljava/lang/StringBuilder;

    .line 648
    .line 649
    const-string v6, "failed to delete fabricated overlay \'"

    .line 650
    .line 651
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    const-string v1, "\'"

    .line 658
    .line 659
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    .line 661
    .line 662
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v1

    .line 666
    invoke-static {v4, v1, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 667
    .line 668
    .line 669
    goto :goto_d

    .line 670
    :cond_15
    return-object v2

    .line 671
    :goto_12
    :try_start_c
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 672
    throw p0
.end method

.method public final updatePackageOverlays(Lcom/android/server/pm/pkg/AndroidPackage;II)Ljava/util/Set;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v13, p2

    .line 4
    .line 5
    iget-object v14, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 6
    .line 7
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v2, Landroid/content/om/OverlayIdentifier;

    .line 23
    .line 24
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-direct {v2, v3}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v3, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    .line 32
    .line 33
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v3, v4}, Lcom/android/internal/content/om/OverlayConfig;->getPriority(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    :try_start_0
    invoke-virtual {v14, v2, v13}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    move-object/from16 v5, p1

    .line 46
    .line 47
    invoke-virtual {v0, v5, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->mustReinitializeOverlay(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/om/OverlayInfo;)Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_2

    .line 52
    .line 53
    if-eqz v4, :cond_1

    .line 54
    .line 55
    iget-object v3, v4, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v13, v3}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-static {v1, v3}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    :cond_1
    move-object v15, v1

    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    goto/16 :goto_2

    .line 69
    .line 70
    :goto_0
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTargetOverlayableName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplits()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const/4 v3, 0x0

    .line 83
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Lcom/android/server/pm/pkg/AndroidPackageSplit;

    .line 88
    .line 89
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackageSplit;->getPath()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    iget-object v1, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    .line 94
    .line 95
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v1, v3}, Lcom/android/internal/content/om/OverlayConfig;->isMutable(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v9

    .line 103
    iget-object v1, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    .line 104
    .line 105
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v1, v3}, Lcom/android/internal/content/om/OverlayConfig;->isEnabled(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    iget-object v1, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    .line 114
    .line 115
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {v1, v3}, Lcom/android/internal/content/om/OverlayConfig;->getPriority(Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    move-result v10

    .line 123
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayCategory()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v11

    .line 127
    invoke-virtual {v14, v2, v13}, Lcom/android/server/om/OverlayManagerSettings;->remove(Landroid/content/om/OverlayIdentifier;I)Z

    .line 128
    .line 129
    .line 130
    new-instance v12, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 131
    .line 132
    const/16 v16, -0x1

    .line 133
    .line 134
    const/16 v17, 0x0

    .line 135
    .line 136
    move-object v1, v12

    .line 137
    move/from16 v3, p2

    .line 138
    .line 139
    move-object v5, v6

    .line 140
    move-object v6, v7

    .line 141
    move/from16 v7, v16

    .line 142
    .line 143
    move-object/from16 v16, v15

    .line 144
    .line 145
    move-object v15, v12

    .line 146
    move/from16 v12, v17

    .line 147
    .line 148
    invoke-direct/range {v1 .. v12}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;-><init>(Landroid/content/om/OverlayIdentifier;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZILjava/lang/String;Z)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v14, v15}, Lcom/android/server/om/OverlayManagerSettings;->insert(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)V

    .line 152
    .line 153
    .line 154
    invoke-static {v15}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-$$Nest$mgetOverlayInfo(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    move/from16 v2, p3

    .line 159
    .line 160
    move-object/from16 v1, v16

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_2
    iget v5, v4, Landroid/content/om/OverlayInfo;->priority:I

    .line 164
    .line 165
    if-eq v3, v5, :cond_3

    .line 166
    .line 167
    invoke-virtual {v14, v2, v13, v3}, Lcom/android/server/om/OverlayManagerSettings;->setPriority(Landroid/content/om/OverlayIdentifier;II)V

    .line 168
    .line 169
    .line 170
    iget-object v2, v4, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 171
    .line 172
    invoke-static {v13, v2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-static {v1, v2}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    :cond_3
    move/from16 v2, p3

    .line 181
    .line 182
    :goto_1
    invoke-virtual {v0, v4, v13, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/om/CriticalOverlayInfo;II)Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_4

    .line 187
    .line 188
    iget-object v0, v4, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 189
    .line 190
    invoke-static {v13, v0}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-static {v1, v0}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    .line 195
    .line 196
    .line 197
    move-result-object v1
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_4
    return-object v1

    .line 199
    :goto_2
    new-instance v1, Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException;

    .line 200
    .line 201
    const-string v2, "failed to update settings"

    .line 202
    .line 203
    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 204
    .line 205
    .line 206
    throw v1
.end method

.method public final updateState(Landroid/content/om/CriticalOverlayInfo;II)Z
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v9, p2

    .line 4
    .line 5
    move/from16 v10, p3

    .line 6
    .line 7
    const/4 v11, 0x1

    .line 8
    move-object/from16 v2, p1

    .line 9
    .line 10
    check-cast v2, Landroid/content/om/OverlayInfo;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/content/om/OverlayInfo;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    .line 13
    .line 14
    .line 15
    move-result-object v13

    .line 16
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    .line 17
    .line 18
    invoke-interface {v2}, Landroid/content/om/CriticalOverlayInfo;->getTargetPackageName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v0, v9, v3}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->getPackageStateForUser(ILjava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    const/4 v14, 0x0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    move-object v14, v0

    .line 35
    :goto_0
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    .line 36
    .line 37
    invoke-interface {v2}, Landroid/content/om/CriticalOverlayInfo;->getPackageName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v0, v9, v4}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->getPackageStateForUser(ILjava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    if-nez v4, :cond_1

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    move-object v5, v0

    .line 54
    :goto_1
    if-eqz v5, :cond_3

    .line 55
    .line 56
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v6, "com.samsung.themedesigner"

    .line 61
    .line 62
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getLastUpdateTime()J

    .line 69
    .line 70
    .line 71
    move-result-wide v6

    .line 72
    sget-object v0, Lcom/android/server/om/SemSamsungThemeUtils;->disableOverlayList:Ljava/util/List;

    .line 73
    .line 74
    const-string v0, "Park key not found for - "

    .line 75
    .line 76
    const-string v8, "Park Key found for - "

    .line 77
    .line 78
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const/16 v12, 0x80

    .line 81
    .line 82
    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 83
    .line 84
    .line 85
    const-string v12, "/data/overlays/themepark/"

    .line 86
    .line 87
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v12

    .line 94
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v12, "/"

    .line 98
    .line 99
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    new-instance v12, Ljava/io/File;

    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-direct {v12, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    .line 112
    .line 113
    .line 114
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    const-string v15, "OverlayManager"

    .line 116
    .line 117
    if-eqz v3, :cond_2

    .line 118
    .line 119
    :try_start_1
    invoke-virtual {v12}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    if-eqz v3, :cond_2

    .line 124
    .line 125
    invoke-virtual {v12}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    array-length v3, v3

    .line 130
    if-ne v3, v11, :cond_2

    .line 131
    .line 132
    new-instance v0, Ljava/io/File;

    .line 133
    .line 134
    invoke-virtual {v12}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    const/4 v12, 0x0

    .line 139
    aget-object v3, v3, v12

    .line 140
    .line 141
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    invoke-static {v15, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    goto :goto_4

    .line 176
    :catch_0
    move-exception v0

    .line 177
    goto :goto_2

    .line 178
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 195
    .line 196
    .line 197
    goto :goto_3

    .line 198
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 199
    .line 200
    .line 201
    :goto_3
    const/4 v0, 0x0

    .line 202
    :goto_4
    if-eqz v0, :cond_3

    .line 203
    .line 204
    move v0, v11

    .line 205
    goto :goto_5

    .line 206
    :cond_3
    const/4 v0, 0x0

    .line 207
    :goto_5
    if-eqz v5, :cond_5

    .line 208
    .line 209
    if-eqz v0, :cond_4

    .line 210
    .line 211
    goto :goto_6

    .line 212
    :cond_4
    const/4 v3, 0x0

    .line 213
    goto :goto_7

    .line 214
    :cond_5
    :goto_6
    move v3, v11

    .line 215
    :goto_7
    const-string v6, "OverlayManager"

    .line 216
    .line 217
    new-instance v7, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    const-string v8, "Overlay "

    .line 220
    .line 221
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-interface {v2}, Landroid/content/om/CriticalOverlayInfo;->getPackageName()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v8

    .line 228
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    const-string v8, " handled by Ext ? "

    .line 232
    .line 233
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v7

    .line 243
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    if-eqz v3, :cond_9

    .line 247
    .line 248
    iget-object v3, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayManagerExt:Lcom/android/server/om/OverlayManagerServiceExt;

    .line 249
    .line 250
    if-eqz v3, :cond_8

    .line 251
    .line 252
    if-eqz v0, :cond_6

    .line 253
    .line 254
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 255
    .line 256
    invoke-interface {v2}, Landroid/content/om/CriticalOverlayInfo;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    invoke-virtual {v0, v3, v9}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    if-eqz v0, :cond_6

    .line 265
    .line 266
    invoke-static {v0}, Landroid/content/om/OverlayInfoExt;->initFromInfo(Landroid/content/om/OverlayInfo;)Landroid/content/om/OverlayInfoExt;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    if-nez v0, :cond_6

    .line 271
    .line 272
    const/4 v3, 0x0

    .line 273
    return v3

    .line 274
    :cond_6
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayManagerExt:Lcom/android/server/om/OverlayManagerServiceExt;

    .line 275
    .line 276
    invoke-virtual {v0, v14, v2, v9, v10}, Lcom/android/server/om/OverlayManagerServiceExt;->handleStateUpdate(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/om/CriticalOverlayInfo;II)I

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    if-eqz v0, :cond_8

    .line 281
    .line 282
    const/4 v2, 0x2

    .line 283
    and-int/2addr v0, v2

    .line 284
    if-eqz v0, :cond_7

    .line 285
    .line 286
    goto :goto_8

    .line 287
    :cond_7
    const/4 v11, 0x0

    .line 288
    :goto_8
    return v11

    .line 289
    :cond_8
    const-string v0, "OverlayManager"

    .line 290
    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    const-string v3, "Removing package - "

    .line 294
    .line 295
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    const-string v3, " "

    .line 302
    .line 303
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .line 315
    .line 316
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 317
    .line 318
    invoke-virtual {v0, v13, v9}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-virtual {v1, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    .line 323
    .line 324
    .line 325
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 326
    .line 327
    invoke-virtual {v0, v13, v9}, Lcom/android/server/om/OverlayManagerSettings;->remove(Landroid/content/om/OverlayIdentifier;I)Z

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    return v0

    .line 332
    :cond_9
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 333
    .line 334
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayCategory()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    iget-object v6, v0, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    .line 339
    .line 340
    monitor-enter v6

    .line 341
    :try_start_2
    invoke-virtual {v0, v13, v9}, Lcom/android/server/om/OverlayManagerSettings;->select(Landroid/content/om/OverlayIdentifier;I)I

    .line 342
    .line 343
    .line 344
    move-result v7

    .line 345
    if-ltz v7, :cond_20

    .line 346
    .line 347
    iget-object v0, v0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    .line 348
    .line 349
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    check-cast v0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 354
    .line 355
    iget-object v7, v0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCategory:Ljava/lang/String;

    .line 356
    .line 357
    invoke-static {v7, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    move-result v7

    .line 361
    if-nez v7, :cond_b

    .line 362
    .line 363
    if-nez v3, :cond_a

    .line 364
    .line 365
    const/4 v3, 0x0

    .line 366
    goto :goto_9

    .line 367
    :cond_a
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v3

    .line 371
    :goto_9
    iput-object v3, v0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCategory:Ljava/lang/String;

    .line 372
    .line 373
    const/4 v3, 0x0

    .line 374
    iput-object v3, v0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    .line 375
    .line 376
    move v12, v11

    .line 377
    goto :goto_a

    .line 378
    :cond_b
    const/4 v12, 0x0

    .line 379
    :goto_a
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 380
    invoke-interface {v2}, Landroid/content/om/CriticalOverlayInfo;->isFabricated()Z

    .line 381
    .line 382
    .line 383
    move-result v0

    .line 384
    if-nez v0, :cond_c

    .line 385
    .line 386
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 387
    .line 388
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplits()Ljava/util/List;

    .line 389
    .line 390
    .line 391
    move-result-object v3

    .line 392
    const/4 v6, 0x0

    .line 393
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v3

    .line 397
    check-cast v3, Lcom/android/server/pm/pkg/AndroidPackageSplit;

    .line 398
    .line 399
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackageSplit;->getPath()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v3

    .line 403
    invoke-virtual {v0, v9, v13, v3}, Lcom/android/server/om/OverlayManagerSettings;->setBaseCodePath(ILandroid/content/om/OverlayIdentifier;Ljava/lang/String;)Z

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    or-int/2addr v12, v0

    .line 408
    :cond_c
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 409
    .line 410
    invoke-virtual {v0, v13, v9}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    .line 411
    .line 412
    .line 413
    move-result-object v15

    .line 414
    const/16 v17, 0x3

    .line 415
    .line 416
    if-eqz v14, :cond_d

    .line 417
    .line 418
    const-string v0, "android"

    .line 419
    .line 420
    invoke-interface {v2}, Landroid/content/om/CriticalOverlayInfo;->getTargetPackageName()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    move-result v0

    .line 428
    if-eqz v0, :cond_e

    .line 429
    .line 430
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    .line 431
    .line 432
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v2

    .line 436
    invoke-virtual {v0, v2}, Lcom/android/internal/content/om/OverlayConfig;->isMutable(Ljava/lang/String;)Z

    .line 437
    .line 438
    .line 439
    move-result v0

    .line 440
    if-eqz v0, :cond_d

    .line 441
    .line 442
    goto :goto_c

    .line 443
    :cond_d
    :goto_b
    move-object/from16 p1, v14

    .line 444
    .line 445
    move-object/from16 v21, v15

    .line 446
    .line 447
    const/16 v16, 0x0

    .line 448
    .line 449
    goto/16 :goto_14

    .line 450
    .line 451
    :cond_e
    :goto_c
    if-eqz v9, :cond_f

    .line 452
    .line 453
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    .line 454
    .line 455
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 456
    .line 457
    .line 458
    iget-object v2, v15, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    .line 459
    .line 460
    iget v3, v15, Landroid/content/om/OverlayInfo;->userId:I

    .line 461
    .line 462
    iget-object v0, v0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    .line 463
    .line 464
    invoke-virtual {v0, v3, v2}, Lcom/android/server/om/IdmapDaemon;->idmapExists(ILjava/lang/String;)Z

    .line 465
    .line 466
    .line 467
    move-result v0

    .line 468
    if-eqz v0, :cond_f

    .line 469
    .line 470
    const-string v0, "OverlayManager"

    .line 471
    .line 472
    new-instance v2, Ljava/lang/StringBuilder;

    .line 473
    .line 474
    const-string/jumbo v3, "skip idmap creation for "

    .line 475
    .line 476
    .line 477
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v13}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v3

    .line 484
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    const-string v3, " of user "

    .line 488
    .line 489
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v2

    .line 499
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    .line 501
    .line 502
    goto :goto_b

    .line 503
    :cond_f
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    .line 504
    .line 505
    iget-object v8, v15, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    .line 506
    .line 507
    invoke-virtual {v13}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v18

    .line 511
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 512
    .line 513
    .line 514
    new-instance v2, Ljava/lang/StringBuilder;

    .line 515
    .line 516
    const-string v3, "create idmap for "

    .line 517
    .line 518
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v3

    .line 525
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    const-string v7, " and "

    .line 529
    .line 530
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v3

    .line 537
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v2

    .line 544
    const-string v6, "OverlayManager"

    .line 545
    .line 546
    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    .line 548
    .line 549
    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplits()Ljava/util/List;

    .line 550
    .line 551
    .line 552
    move-result-object v2

    .line 553
    const/4 v3, 0x0

    .line 554
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    move-result-object v2

    .line 558
    check-cast v2, Lcom/android/server/pm/pkg/AndroidPackageSplit;

    .line 559
    .line 560
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackageSplit;->getPath()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v2

    .line 564
    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getMetaData()Landroid/os/Bundle;

    .line 565
    .line 566
    .line 567
    move-result-object v16

    .line 568
    if-eqz v16, :cond_11

    .line 569
    .line 570
    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getMetaData()Landroid/os/Bundle;

    .line 571
    .line 572
    .line 573
    move-result-object v3

    .line 574
    const-string/jumbo v11, "resource-map"

    .line 575
    .line 576
    .line 577
    invoke-virtual {v3, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 578
    .line 579
    .line 580
    move-result v3

    .line 581
    if-eqz v3, :cond_11

    .line 582
    .line 583
    new-instance v3, Ljava/io/File;

    .line 584
    .line 585
    new-instance v11, Ljava/lang/StringBuilder;

    .line 586
    .line 587
    move-object/from16 p1, v6

    .line 588
    .line 589
    const-string v6, "/data/overlays/remaps/"

    .line 590
    .line 591
    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    const-string v6, "/"

    .line 595
    .line 596
    move-object/from16 v19, v7

    .line 597
    .line 598
    const-string v7, "."

    .line 599
    .line 600
    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v6

    .line 604
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    .line 606
    .line 607
    const-string v6, ".map"

    .line 608
    .line 609
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v6

    .line 616
    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 617
    .line 618
    .line 619
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 620
    .line 621
    .line 622
    move-result v3

    .line 623
    if-eqz v3, :cond_10

    .line 624
    .line 625
    goto :goto_d

    .line 626
    :cond_10
    invoke-static {v14}, Lcom/android/server/om/ResourceMapParser;->parseResourceMap(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 627
    .line 628
    .line 629
    goto :goto_d

    .line 630
    :cond_11
    move-object/from16 p1, v6

    .line 631
    .line 632
    move-object/from16 v19, v7

    .line 633
    .line 634
    :goto_d
    :try_start_3
    invoke-virtual {v0, v14, v4, v5, v9}, Lcom/android/server/om/IdmapManager;->calculateFulfilledPolicies(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;I)I

    .line 635
    .line 636
    .line 637
    move-result v11

    .line 638
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 639
    .line 640
    .line 641
    move-result v3

    .line 642
    const/16 v6, 0x1d

    .line 643
    .line 644
    if-lt v3, v6, :cond_12

    .line 645
    .line 646
    const/16 v20, 0x1

    .line 647
    .line 648
    goto :goto_f

    .line 649
    :cond_12
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->isVendor()Z

    .line 650
    .line 651
    .line 652
    move-result v3

    .line 653
    if-eqz v3, :cond_13

    .line 654
    .line 655
    sget-boolean v3, Lcom/android/server/om/IdmapManager;->VENDOR_IS_Q_OR_LATER:Z

    .line 656
    .line 657
    :goto_e
    move/from16 v20, v3

    .line 658
    .line 659
    goto :goto_f

    .line 660
    :cond_13
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    .line 661
    .line 662
    .line 663
    move-result v3

    .line 664
    if-nez v3, :cond_14

    .line 665
    .line 666
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->isSignedWithPlatformKey()Z

    .line 667
    .line 668
    .line 669
    move-result v3

    .line 670
    if-nez v3, :cond_14

    .line 671
    .line 672
    const/4 v3, 0x1

    .line 673
    goto :goto_e

    .line 674
    :cond_14
    const/4 v3, 0x0

    .line 675
    goto :goto_e

    .line 676
    :goto_f
    iget-object v3, v0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 677
    .line 678
    move-object v7, v2

    .line 679
    move-object v2, v3

    .line 680
    const/16 v16, 0x0

    .line 681
    .line 682
    move-object v3, v7

    .line 683
    move v4, v11

    .line 684
    move-object v5, v8

    .line 685
    move-object/from16 v21, v15

    .line 686
    .line 687
    move-object/from16 v15, p1

    .line 688
    .line 689
    move-object/from16 v6, v18

    .line 690
    .line 691
    move-object/from16 p1, v14

    .line 692
    .line 693
    move-object/from16 v14, v19

    .line 694
    .line 695
    move-object/from16 v19, v7

    .line 696
    .line 697
    move/from16 v7, p2

    .line 698
    .line 699
    move-object/from16 v22, v8

    .line 700
    .line 701
    move/from16 v8, v20

    .line 702
    .line 703
    :try_start_4
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/om/IdmapDaemon;->verifyIdmap(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Z

    .line 704
    .line 705
    .line 706
    move-result v2

    .line 707
    if-eqz v2, :cond_15

    .line 708
    .line 709
    const/4 v0, 0x1

    .line 710
    :goto_10
    const/4 v2, 0x2

    .line 711
    goto :goto_12

    .line 712
    :cond_15
    iget-object v2, v0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    .line 713
    .line 714
    move-object/from16 v3, v19

    .line 715
    .line 716
    move v4, v11

    .line 717
    move-object/from16 v5, v22

    .line 718
    .line 719
    move-object/from16 v6, v18

    .line 720
    .line 721
    move/from16 v7, p2

    .line 722
    .line 723
    move/from16 v8, v20

    .line 724
    .line 725
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/om/IdmapDaemon;->createIdmap(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 729
    if-eqz v0, :cond_16

    .line 730
    .line 731
    move/from16 v0, v17

    .line 732
    .line 733
    goto :goto_10

    .line 734
    :catch_1
    move-exception v0

    .line 735
    goto :goto_11

    .line 736
    :catch_2
    move-exception v0

    .line 737
    move-object/from16 v22, v8

    .line 738
    .line 739
    move-object/from16 v21, v15

    .line 740
    .line 741
    const/16 v16, 0x0

    .line 742
    .line 743
    move-object/from16 v15, p1

    .line 744
    .line 745
    move-object/from16 p1, v14

    .line 746
    .line 747
    move-object/from16 v14, v19

    .line 748
    .line 749
    move-object/from16 v19, v2

    .line 750
    .line 751
    :goto_11
    const-string v2, "failed to generate idmap for "

    .line 752
    .line 753
    move-object/from16 v4, v19

    .line 754
    .line 755
    move-object/from16 v3, v22

    .line 756
    .line 757
    invoke-static {v2, v4, v14, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object v2

    .line 761
    invoke-static {v15, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 762
    .line 763
    .line 764
    :cond_16
    move/from16 v0, v16

    .line 765
    .line 766
    goto :goto_10

    .line 767
    :goto_12
    and-int/lit8 v3, v0, 0x2

    .line 768
    .line 769
    if-eqz v3, :cond_17

    .line 770
    .line 771
    const/4 v2, 0x1

    .line 772
    goto :goto_13

    .line 773
    :cond_17
    move/from16 v2, v16

    .line 774
    .line 775
    :goto_13
    or-int/2addr v12, v2

    .line 776
    move/from16 v23, v12

    .line 777
    .line 778
    move v12, v0

    .line 779
    move/from16 v0, v23

    .line 780
    .line 781
    goto :goto_15

    .line 782
    :goto_14
    move v0, v12

    .line 783
    move/from16 v12, v16

    .line 784
    .line 785
    :goto_15
    iget-object v2, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 786
    .line 787
    invoke-virtual {v2, v13, v9}, Lcom/android/server/om/OverlayManagerSettings;->getState(Landroid/content/om/OverlayIdentifier;I)I

    .line 788
    .line 789
    .line 790
    move-result v2

    .line 791
    const/4 v3, 0x1

    .line 792
    and-int/lit8 v4, v10, 0x1

    .line 793
    .line 794
    const/4 v3, 0x4

    .line 795
    if-eqz v4, :cond_18

    .line 796
    .line 797
    :goto_16
    move v11, v3

    .line 798
    goto :goto_17

    .line 799
    :cond_18
    const/4 v4, 0x2

    .line 800
    and-int/lit8 v5, v10, 0x2

    .line 801
    .line 802
    if-eqz v5, :cond_19

    .line 803
    .line 804
    const/4 v11, 0x5

    .line 805
    goto :goto_17

    .line 806
    :cond_19
    and-int/2addr v3, v10

    .line 807
    if-eqz v3, :cond_1a

    .line 808
    .line 809
    const/4 v11, 0x7

    .line 810
    goto :goto_17

    .line 811
    :cond_1a
    if-nez p1, :cond_1b

    .line 812
    .line 813
    move/from16 v11, v16

    .line 814
    .line 815
    goto :goto_17

    .line 816
    :cond_1b
    const/4 v3, 0x1

    .line 817
    and-int/lit8 v5, v12, 0x1

    .line 818
    .line 819
    if-nez v5, :cond_1c

    .line 820
    .line 821
    iget-object v5, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    .line 822
    .line 823
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 824
    .line 825
    .line 826
    move-object/from16 v6, v21

    .line 827
    .line 828
    iget-object v7, v6, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    .line 829
    .line 830
    iget v8, v6, Landroid/content/om/OverlayInfo;->userId:I

    .line 831
    .line 832
    iget-object v5, v5, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    .line 833
    .line 834
    invoke-virtual {v5, v8, v7}, Lcom/android/server/om/IdmapDaemon;->idmapExists(ILjava/lang/String;)Z

    .line 835
    .line 836
    .line 837
    move-result v5

    .line 838
    if-nez v5, :cond_1d

    .line 839
    .line 840
    goto :goto_16

    .line 841
    :cond_1c
    move-object/from16 v6, v21

    .line 842
    .line 843
    :cond_1d
    iget-object v3, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 844
    .line 845
    invoke-virtual {v6}, Landroid/content/om/OverlayInfo;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    .line 846
    .line 847
    .line 848
    move-result-object v5

    .line 849
    invoke-virtual {v3, v5, v9}, Lcom/android/server/om/OverlayManagerSettings;->getEnabled(Landroid/content/om/OverlayIdentifier;I)Z

    .line 850
    .line 851
    .line 852
    move-result v3

    .line 853
    if-eqz v3, :cond_1e

    .line 854
    .line 855
    move/from16 v11, v17

    .line 856
    .line 857
    goto :goto_17

    .line 858
    :cond_1e
    move v11, v4

    .line 859
    :goto_17
    if-eq v2, v11, :cond_1f

    .line 860
    .line 861
    const-string v3, "OverlayManager"

    .line 862
    .line 863
    const-string v4, "%s:%d: %s -> %s"

    .line 864
    .line 865
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 866
    .line 867
    .line 868
    move-result-object v5

    .line 869
    invoke-static {v2}, Landroid/content/om/OverlayInfo;->stateToString(I)Ljava/lang/String;

    .line 870
    .line 871
    .line 872
    move-result-object v2

    .line 873
    invoke-static {v11}, Landroid/content/om/OverlayInfo;->stateToString(I)Ljava/lang/String;

    .line 874
    .line 875
    .line 876
    move-result-object v6

    .line 877
    filled-new-array {v13, v5, v2, v6}, [Ljava/lang/Object;

    .line 878
    .line 879
    .line 880
    move-result-object v2

    .line 881
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 882
    .line 883
    .line 884
    move-result-object v2

    .line 885
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    .line 887
    .line 888
    iget-object v1, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 889
    .line 890
    invoke-virtual {v1, v13, v9, v11}, Lcom/android/server/om/OverlayManagerSettings;->setState(Landroid/content/om/OverlayIdentifier;II)Z

    .line 891
    .line 892
    .line 893
    move-result v1

    .line 894
    or-int/2addr v0, v1

    .line 895
    :cond_1f
    return v0

    .line 896
    :catchall_0
    move-exception v0

    .line 897
    goto :goto_18

    .line 898
    :cond_20
    :try_start_5
    new-instance v0, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    .line 899
    .line 900
    invoke-direct {v0, v13, v9}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Landroid/content/om/OverlayIdentifier;I)V

    .line 901
    .line 902
    .line 903
    throw v0

    .line 904
    :goto_18
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 905
    throw v0
.end method
