.class public Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;
.super Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    const-string/jumbo v0, "metadata/"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "version"

    .line 5
    .line 6
    .line 7
    const-string v2, "/data/misc/keychain/trusted_ct_logs/"

    .line 8
    .line 9
    const-string v3, "ct_logs"

    .line 10
    .line 11
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static installLog(Lorg/json/JSONObject;Ljava/io/File;)V
    .locals 8

    .line 1
    const-string v0, "description"

    .line 2
    .line 3
    const-string/jumbo v1, "url"

    .line 4
    .line 5
    .line 6
    const-string v2, "key"

    .line 7
    .line 8
    const-string v3, "Failed to set permissions on "

    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    const/4 v5, 0x0

    .line 15
    invoke-static {v4, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 16
    .line 17
    .line 18
    move-result-object v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :try_start_1
    const-string v6, "SHA-256"

    .line 20
    .line 21
    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-static {v4, v5}, Lcom/android/internal/util/HexDump;->toHexString([BZ)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 33
    :try_start_2
    new-instance v6, Ljava/io/File;

    .line 34
    .line 35
    invoke-direct {v6, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance p1, Ljava/io/OutputStreamWriter;

    .line 39
    .line 40
    new-instance v4, Ljava/io/FileOutputStream;

    .line 41
    .line 42
    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 43
    .line 44
    .line 45
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 46
    .line 47
    invoke-direct {p1, v4, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 48
    .line 49
    .line 50
    :try_start_3
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-static {p1, v2, v4}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->writeLogEntry(Ljava/io/OutputStreamWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-static {p1, v1, v2}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->writeLogEntry(Ljava/io/OutputStreamWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-static {p1, v0, p0}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->writeLogEntry(Ljava/io/OutputStreamWriter;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    .line 70
    .line 71
    :try_start_4
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->close()V

    .line 72
    .line 73
    .line 74
    const/4 p0, 0x1

    .line 75
    invoke-virtual {v6, p0, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-eqz p0, :cond_0

    .line 80
    .line 81
    return-void

    .line 82
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 83
    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 104
    :catch_0
    move-exception p0

    .line 105
    goto :goto_1

    .line 106
    :catchall_0
    move-exception p0

    .line 107
    :try_start_5
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :catchall_1
    move-exception p1

    .line 112
    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 113
    .line 114
    .line 115
    :goto_0
    throw p0

    .line 116
    :catch_1
    move-exception p0

    .line 117
    new-instance p1, Ljava/lang/RuntimeException;

    .line 118
    .line 119
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 120
    .line 121
    .line 122
    throw p1
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    .line 123
    :goto_1
    new-instance p1, Ljava/io/IOException;

    .line 124
    .line 125
    const-string v0, "Failed to parse log"

    .line 126
    .line 127
    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    .line 129
    .line 130
    throw p1
.end method

.method public static writeLogEntry(Ljava/io/OutputStreamWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p1, ":"

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p1, "\n"

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final deleteOldLogDirectories()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    .line 13
    .line 14
    const-string v2, "current"

    .line 15
    .line 16
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver$1;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver$1;-><init>(Ljava/io/File;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    array-length v0, p0

    .line 35
    const/4 v1, 0x0

    .line 36
    :goto_0
    if-ge v1, v0, :cond_1

    .line 37
    .line 38
    aget-object v2, p0, v1

    .line 39
    .line 40
    invoke-static {v2}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 41
    .line 42
    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-void
.end method

.method public final install(Ljava/io/InputStream;I)V
    .locals 9

    .line 1
    const-string v0, "Failed to set "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const-string v2, "Unable to make directory "

    .line 15
    .line 16
    if-eqz v1, :cond_6

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-virtual {v1, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_5

    .line 27
    .line 28
    new-instance v1, Ljava/io/File;

    .line 29
    .line 30
    iget-object v5, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    .line 31
    .line 32
    const-string v6, "current"

    .line 33
    .line 34
    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v5, Ljava/io/File;

    .line 38
    .line 39
    iget-object v6, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    .line 40
    .line 41
    new-instance v7, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v8, "logs-"

    .line 44
    .line 45
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_1

    .line 67
    .line 68
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    if-eqz v6, :cond_0

    .line 81
    .line 82
    iget-object p1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    .line 83
    .line 84
    iget-object v0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateVersion:Ljava/io/File;

    .line 85
    .line 86
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 87
    .line 88
    int-to-long v2, p2

    .line 89
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->writeUpdate(Ljava/io/File;Ljava/io/File;Ljava/io/InputStream;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->deleteOldLogDirectories()V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_0
    invoke-static {v5}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 108
    .line 109
    .line 110
    :cond_1
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    if-eqz v6, :cond_4

    .line 118
    .line 119
    invoke-virtual {v5, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 120
    .line 121
    .line 122
    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    if-eqz v2, :cond_3

    .line 124
    .line 125
    :try_start_1
    invoke-static {p1}, Llibcore/io/Streams;->readFullyNoClose(Ljava/io/InputStream;)[B

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    new-instance v0, Lorg/json/JSONObject;

    .line 130
    .line 131
    new-instance v2, Ljava/lang/String;

    .line 132
    .line 133
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 134
    .line 135
    invoke-direct {v2, p1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 136
    .line 137
    .line 138
    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const-string p1, "logs"

    .line 142
    .line 143
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-ge v4, v0, :cond_2

    .line 152
    .line 153
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-static {v0, v5}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->installLog(Lorg/json/JSONObject;Ljava/io/File;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    .line 159
    .line 160
    add-int/lit8 v4, v4, 0x1

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :catch_0
    move-exception p0

    .line 164
    goto/16 :goto_2

    .line 165
    .line 166
    :catch_1
    move-exception p0

    .line 167
    goto :goto_1

    .line 168
    :cond_2
    :try_start_2
    new-instance p1, Ljava/io/File;

    .line 169
    .line 170
    iget-object v0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    .line 171
    .line 172
    const-string/jumbo v2, "new_symlink"

    .line 173
    .line 174
    .line 175
    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 176
    .line 177
    .line 178
    :try_start_3
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-static {v0, v2}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 187
    .line 188
    .line 189
    :try_start_4
    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 194
    .line 195
    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    const-string v0, "CT log directory updated to "

    .line 199
    .line 200
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    const-string v0, "CTLogInstallReceiver"

    .line 215
    .line 216
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    iget-object p1, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    .line 220
    .line 221
    iget-object v0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateVersion:Ljava/io/File;

    .line 222
    .line 223
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 224
    .line 225
    int-to-long v2, p2

    .line 226
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p2

    .line 230
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->writeUpdate(Ljava/io/File;Ljava/io/File;Ljava/io/InputStream;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p0}, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->deleteOldLogDirectories()V

    .line 241
    .line 242
    .line 243
    return-void

    .line 244
    :catch_2
    move-exception p0

    .line 245
    :try_start_5
    new-instance p1, Ljava/io/IOException;

    .line 246
    .line 247
    const-string p2, "Failed to create symlink"

    .line 248
    .line 249
    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 250
    .line 251
    .line 252
    throw p1

    .line 253
    :goto_1
    new-instance p1, Ljava/io/IOException;

    .line 254
    .line 255
    const-string p2, "Failed to parse logs"

    .line 256
    .line 257
    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 258
    .line 259
    .line 260
    throw p1

    .line 261
    :cond_3
    new-instance p0, Ljava/io/IOException;

    .line 262
    .line 263
    new-instance p1, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p2

    .line 272
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    const-string p2, " readable"

    .line 276
    .line 277
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    throw p0

    .line 288
    :cond_4
    new-instance p0, Ljava/io/IOException;

    .line 289
    .line 290
    new-instance p1, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p2

    .line 299
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    throw p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 310
    :goto_2
    invoke-static {v5}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 311
    .line 312
    .line 313
    throw p0

    .line 314
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 315
    .line 316
    new-instance p2, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    const-string v0, "Unable to set permissions on "

    .line 319
    .line 320
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    iget-object p0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    .line 324
    .line 325
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object p0

    .line 329
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object p0

    .line 336
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    throw p1

    .line 340
    :cond_6
    new-instance p1, Ljava/io/IOException;

    .line 341
    .line 342
    new-instance p2, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    iget-object p0, p0, Lcom/android/server/updates/ConfigUpdateInstallReceiver;->updateDir:Ljava/io/File;

    .line 348
    .line 349
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object p0

    .line 353
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object p0

    .line 360
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    throw p1
.end method
