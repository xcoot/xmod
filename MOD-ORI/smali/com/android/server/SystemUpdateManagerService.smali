.class public final Lcom/android/server/SystemUpdateManagerService;
.super Landroid/os/ISystemUpdateManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mFile:Landroid/util/AtomicFile;

.field public mLastUid:I

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/os/ISystemUpdateManager$Stub;-><init>()V

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
    iput-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    iput v1, p0, Lcom/android/server/SystemUpdateManagerService;->mLastUid:I

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/SystemUpdateManagerService;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    new-instance p1, Landroid/util/AtomicFile;

    .line 17
    .line 18
    new-instance v1, Ljava/io/File;

    .line 19
    .line 20
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string/jumbo v3, "system-update-info.xml"

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p1, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    .line 34
    .line 35
    monitor-enter v0

    .line 36
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemUpdateManagerService;->loadSystemUpdateInfoLocked()Landroid/os/Bundle;

    .line 37
    .line 38
    .line 39
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0
.end method


# virtual methods
.method public final loadSystemUpdateInfoLocked()Landroid/os/Bundle;
    .locals 7

    .line 1
    const-string v0, "SystemUpdateManagerService"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    .line 5
    .line 6
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 7
    .line 8
    .line 9
    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :try_start_1
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    :cond_0
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const/4 v5, 0x1

    .line 19
    if-eq v4, v5, :cond_1

    .line 20
    .line 21
    const/4 v5, 0x2

    .line 22
    if-ne v4, v5, :cond_0

    .line 23
    .line 24
    const-string/jumbo v4, "info"

    .line 25
    .line 26
    .line 27
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    invoke-static {v3}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    .line 38
    .line 39
    .line 40
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :cond_1
    if-eqz v2, :cond_3

    .line 42
    .line 43
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_3

    .line 47
    :catch_0
    move-exception v2

    .line 48
    goto :goto_1

    .line 49
    :catch_1
    move-exception v2

    .line 50
    goto :goto_2

    .line 51
    :catchall_0
    move-exception v3

    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_1
    move-exception v2

    .line 59
    :try_start_4
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_0
    throw v3
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 63
    :goto_1
    const-string v3, "Failed to read the info file:"

    .line 64
    .line 65
    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .line 67
    .line 68
    goto :goto_3

    .line 69
    :goto_2
    const-string v3, "Failed to parse the info file:"

    .line 70
    .line 71
    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    .line 73
    .line 74
    goto :goto_3

    .line 75
    :catch_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v3, "No existing info file "

    .line 78
    .line 79
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v3, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    .line 83
    .line 84
    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    :cond_3
    :goto_3
    if-nez v1, :cond_4

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/android/server/SystemUpdateManagerService;->removeInfoFileAndGetDefaultInfoBundleLocked()Landroid/os/Bundle;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    return-object p0

    .line 105
    :cond_4
    const-string/jumbo v2, "version"

    .line 106
    .line 107
    .line 108
    const/4 v3, -0x1

    .line 109
    invoke-virtual {v1, v2, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-ne v2, v3, :cond_5

    .line 114
    .line 115
    const-string v1, "Invalid info file (invalid version). Ignored"

    .line 116
    .line 117
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/android/server/SystemUpdateManagerService;->removeInfoFileAndGetDefaultInfoBundleLocked()Landroid/os/Bundle;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    return-object p0

    .line 125
    :cond_5
    const-string/jumbo v2, "uid"

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v2, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-ne v2, v3, :cond_6

    .line 133
    .line 134
    const-string v1, "Invalid info file (invalid UID). Ignored"

    .line 135
    .line 136
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/android/server/SystemUpdateManagerService;->removeInfoFileAndGetDefaultInfoBundleLocked()Landroid/os/Bundle;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    return-object p0

    .line 144
    :cond_6
    const-string/jumbo v4, "boot-count"

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v4, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    if-eq v4, v3, :cond_a

    .line 152
    .line 153
    iget-object v3, p0, Lcom/android/server/SystemUpdateManagerService;->mContext:Landroid/content/Context;

    .line 154
    .line 155
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    const-string/jumbo v5, "boot_count"

    .line 160
    .line 161
    .line 162
    const/4 v6, 0x0

    .line 163
    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    if-eq v4, v3, :cond_7

    .line 168
    .line 169
    goto :goto_4

    .line 170
    :cond_7
    const-string/jumbo v3, "info-bundle"

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v3}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    if-nez v1, :cond_8

    .line 178
    .line 179
    const-string v1, "Invalid info file (missing info). Ignored"

    .line 180
    .line 181
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Lcom/android/server/SystemUpdateManagerService;->removeInfoFileAndGetDefaultInfoBundleLocked()Landroid/os/Bundle;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    return-object p0

    .line 189
    :cond_8
    const-string/jumbo v3, "status"

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, v3, v6}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    if-nez v3, :cond_9

    .line 197
    .line 198
    const-string v1, "Invalid info file (invalid status). Ignored"

    .line 199
    .line 200
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0}, Lcom/android/server/SystemUpdateManagerService;->removeInfoFileAndGetDefaultInfoBundleLocked()Landroid/os/Bundle;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    return-object p0

    .line 208
    :cond_9
    iput v2, p0, Lcom/android/server/SystemUpdateManagerService;->mLastUid:I

    .line 209
    .line 210
    new-instance p0, Landroid/os/Bundle;

    .line 211
    .line 212
    invoke-direct {p0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/PersistableBundle;)V

    .line 213
    .line 214
    .line 215
    return-object p0

    .line 216
    :cond_a
    :goto_4
    const-string v1, "Outdated info file. Ignored"

    .line 217
    .line 218
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0}, Lcom/android/server/SystemUpdateManagerService;->removeInfoFileAndGetDefaultInfoBundleLocked()Landroid/os/Bundle;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    return-object p0
.end method

.method public final removeInfoFileAndGetDefaultInfoBundleLocked()Landroid/os/Bundle;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "SystemUpdateManagerService"

    .line 10
    .line 11
    const-string v1, "Removing info file"

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/android/server/SystemUpdateManagerService;->mLastUid:I

    .line 23
    .line 24
    const-string/jumbo p0, "status"

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-static {v0, p0}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public final retrieveSystemUpdateInfo()Landroid/os/Bundle;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.READ_SYSTEM_UPDATE_INFO"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    const-string v2, "android.permission.RECOVERY"

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 24
    .line 25
    const-string v0, "Can\'t read system update info. Requiring READ_SYSTEM_UPDATE_INFO or RECOVERY permission."

    .line 26
    .line 27
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0

    .line 31
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mLock:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter v0

    .line 34
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemUpdateManagerService;->loadSystemUpdateInfoLocked()Landroid/os/Bundle;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    monitor-exit v0

    .line 39
    return-object p0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0
.end method

.method public final saveSystemUpdateInfoLocked(ILandroid/os/PersistableBundle;)V
    .locals 6

    .line 1
    new-instance v0, Landroid/os/PersistableBundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "info-bundle"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, p2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v1, "version"

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    const-string/jumbo v1, "uid"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, p1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/server/SystemUpdateManagerService;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string/jumbo v3, "boot_count"

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const-string/jumbo v2, "boot-count"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    const-string/jumbo v1, "info"

    .line 45
    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    :try_start_0
    iget-object v3, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    .line 49
    .line 50
    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 51
    .line 52
    .line 53
    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 54
    :try_start_1
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 59
    .line 60
    invoke-interface {v4, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v4, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v4}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {v4, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 70
    .line 71
    .line 72
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    .line 76
    .line 77
    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 78
    .line 79
    .line 80
    iput p1, p0, Lcom/android/server/SystemUpdateManagerService;->mLastUid:I

    .line 81
    .line 82
    const-string/jumbo p0, "status"

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, p0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :catch_0
    move-exception p1

    .line 90
    move-object v2, v3

    .line 91
    goto :goto_0

    .line 92
    :catch_1
    move-exception p1

    .line 93
    :goto_0
    const-string p2, "SystemUpdateManagerService"

    .line 94
    .line 95
    const-string v0, "Failed to save the info file:"

    .line 96
    .line 97
    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    .line 99
    .line 100
    if-eqz v2, :cond_0

    .line 101
    .line 102
    iget-object p0, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    .line 103
    .line 104
    invoke-virtual {p0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 105
    .line 106
    .line 107
    :cond_0
    :goto_1
    return-void
.end method

.method public final updateSystemUpdateInfo(Landroid/os/PersistableBundle;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/ISystemUpdateManager$Stub;->updateSystemUpdateInfo_enforcePermission()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "status"

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-string p0, "SystemUpdateManagerService"

    .line 15
    .line 16
    const-string p1, "Invalid status info. Ignored"

    .line 17
    .line 18
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iget v2, p0, Lcom/android/server/SystemUpdateManagerService;->mLastUid:I

    .line 27
    .line 28
    const/4 v3, -0x1

    .line 29
    if-eq v2, v3, :cond_2

    .line 30
    .line 31
    if-eq v2, v1, :cond_2

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    if-eq v0, v2, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const-string p0, "SystemUpdateManagerService"

    .line 38
    .line 39
    const-string p1, "Inactive updater reporting IDLE status. Ignored"

    .line 40
    .line 41
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mLock:Ljava/lang/Object;

    .line 46
    .line 47
    monitor-enter v0

    .line 48
    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/android/server/SystemUpdateManagerService;->saveSystemUpdateInfoLocked(ILandroid/os/PersistableBundle;)V

    .line 49
    .line 50
    .line 51
    monitor-exit v0

    .line 52
    :goto_1
    return-void

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0
.end method
