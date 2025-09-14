.class public final Lcom/android/server/enterprise/general/font/FontWriter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public bos:Ljava/io/BufferedOutputStream;

.field public fOut:Ljava/io/FileOutputStream;

.field public osw:Ljava/io/OutputStreamWriter;


# direct methods
.method public static changeFilePermission(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "chmod 744 "

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-nez p0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 35
    .line 36
    const-string v0, "Cannot chmod"

    .line 37
    .line 38
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :catch_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 11

    .line 1
    const-string/jumbo v0, "copyFontFile : bos.close() error"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "copyFontFile : fOut.close() error"

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "copyFontFile : myInputStream.close() error"

    .line 8
    .line 9
    .line 10
    const-string v3, "FontWriter"

    .line 11
    .line 12
    const-string v4, ""

    .line 13
    .line 14
    const-wide/16 v5, 0x0

    .line 15
    .line 16
    :try_start_0
    new-instance v7, Ljava/io/File;

    .line 17
    .line 18
    invoke-direct {v7, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    new-instance v8, Ljava/io/FileOutputStream;

    .line 29
    .line 30
    invoke-direct {v8, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 31
    .line 32
    .line 33
    iput-object v8, p0, Lcom/android/server/enterprise/general/font/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 34
    .line 35
    new-instance v7, Ljava/io/BufferedOutputStream;

    .line 36
    .line 37
    iget-object v8, p0, Lcom/android/server/enterprise/general/font/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 38
    .line 39
    invoke-direct {v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 40
    .line 41
    .line 42
    iput-object v7, p0, Lcom/android/server/enterprise/general/font/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    .line 43
    .line 44
    const/16 v7, 0x400

    .line 45
    .line 46
    new-array v7, v7, [B

    .line 47
    .line 48
    :goto_0
    invoke-virtual {p2, v7}, Ljava/io/InputStream;->read([B)I

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    if-lez v8, :cond_0

    .line 53
    .line 54
    iget-object v9, p0, Lcom/android/server/enterprise/general/font/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    .line 55
    .line 56
    const/4 v10, 0x0

    .line 57
    invoke-virtual {v9, v7, v10, v8}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    goto/16 :goto_8

    .line 63
    .line 64
    :catch_0
    move-exception v7

    .line 65
    goto :goto_4

    .line 66
    :cond_0
    iget-object v7, p0, Lcom/android/server/enterprise/general/font/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    .line 67
    .line 68
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    .line 69
    .line 70
    .line 71
    iget-object v7, p0, Lcom/android/server/enterprise/general/font/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 72
    .line 73
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 74
    .line 75
    .line 76
    iget-object v7, p0, Lcom/android/server/enterprise/general/font/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    .line 77
    .line 78
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .line 80
    .line 81
    :try_start_1
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :catch_1
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    :goto_1
    :try_start_2
    iget-object p2, p0, Lcom/android/server/enterprise/general/font/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 89
    .line 90
    if-eqz p2, :cond_1

    .line 91
    .line 92
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :catch_2
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    :cond_1
    :goto_2
    :try_start_3
    iget-object p0, p0, Lcom/android/server/enterprise/general/font/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    .line 100
    .line 101
    if-eqz p0, :cond_5

    .line 102
    .line 103
    :goto_3
    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 104
    .line 105
    .line 106
    goto :goto_7

    .line 107
    :catch_3
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    goto :goto_7

    .line 111
    :goto_4
    :try_start_4
    new-instance v8, Ljava/io/File;

    .line 112
    .line 113
    invoke-direct {v8, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v8}, Ljava/io/File;->length()J

    .line 117
    .line 118
    .line 119
    move-result-wide v9

    .line 120
    cmp-long v9, v9, v5

    .line 121
    .line 122
    if-nez v9, :cond_2

    .line 123
    .line 124
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 125
    .line 126
    .line 127
    :cond_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 128
    .line 129
    .line 130
    if-eqz p2, :cond_3

    .line 131
    .line 132
    :try_start_5
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 133
    .line 134
    .line 135
    goto :goto_5

    .line 136
    :catch_4
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    :cond_3
    :goto_5
    :try_start_6
    iget-object p2, p0, Lcom/android/server/enterprise/general/font/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 140
    .line 141
    if-eqz p2, :cond_4

    .line 142
    .line 143
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 144
    .line 145
    .line 146
    goto :goto_6

    .line 147
    :catch_5
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    :cond_4
    :goto_6
    :try_start_7
    iget-object p0, p0, Lcom/android/server/enterprise/general/font/FontWriter;->bos:Ljava/io/BufferedOutputStream;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 151
    .line 152
    if-eqz p0, :cond_5

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_5
    :goto_7
    invoke-static {v4}, Lcom/android/server/enterprise/general/font/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    new-instance p0, Ljava/io/File;

    .line 159
    .line 160
    invoke-direct {p0, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 164
    .line 165
    .line 166
    move-result-wide p1

    .line 167
    cmp-long p1, p1, v5

    .line 168
    .line 169
    if-nez p1, :cond_6

    .line 170
    .line 171
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 172
    .line 173
    .line 174
    :cond_6
    return-void

    .line 175
    :goto_8
    if-eqz p2, :cond_7

    .line 176
    .line 177
    :try_start_8
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 178
    .line 179
    .line 180
    goto :goto_9

    .line 181
    :catch_6
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    :cond_7
    :goto_9
    :try_start_9
    iget-object p2, p0, Lcom/android/server/enterprise/general/font/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 185
    .line 186
    if-eqz p2, :cond_8

    .line 187
    .line 188
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 189
    .line 190
    .line 191
    goto :goto_a

    .line 192
    :catch_7
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    :cond_8
    :goto_a
    :try_start_a
    iget-object p0, p0, Lcom/android/server/enterprise/general/font/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    .line 196
    .line 197
    if-eqz p0, :cond_9

    .line 198
    .line 199
    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 200
    .line 201
    .line 202
    goto :goto_b

    .line 203
    :catch_8
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    :cond_9
    :goto_b
    throw p1
.end method

.method public final writeLoc(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string/jumbo v0, "sans.loc"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "writeLoc : fOut.close() error"

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "writeLoc : osw.close() error"

    .line 8
    .line 9
    .line 10
    const-string v3, "FontWriter"

    .line 11
    .line 12
    const-string v4, "/data/app_fonts/"

    .line 13
    .line 14
    const-string v5, ""

    .line 15
    .line 16
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    new-instance v6, Ljava/io/File;

    .line 37
    .line 38
    invoke-direct {v6, v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 42
    .line 43
    .line 44
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    .line 49
    .line 50
    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 51
    .line 52
    .line 53
    iput-object v4, p0, Lcom/android/server/enterprise/general/font/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 54
    .line 55
    new-instance v4, Ljava/io/OutputStreamWriter;

    .line 56
    .line 57
    iget-object v6, p0, Lcom/android/server/enterprise/general/font/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 58
    .line 59
    invoke-direct {v4, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 60
    .line 61
    .line 62
    iput-object v4, p0, Lcom/android/server/enterprise/general/font/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    .line 63
    .line 64
    new-instance v6, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p1, "\n"

    .line 73
    .line 74
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {v4, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/android/server/enterprise/general/font/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/android/server/enterprise/general/font/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .line 93
    .line 94
    :try_start_2
    iget-object p1, p0, Lcom/android/server/enterprise/general/font/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    .line 95
    .line 96
    if-eqz p1, :cond_0

    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :catch_0
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    :cond_0
    :goto_0
    :try_start_3
    iget-object p0, p0, Lcom/android/server/enterprise/general/font/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 106
    .line 107
    if-eqz p0, :cond_2

    .line 108
    .line 109
    :goto_1
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 110
    .line 111
    .line 112
    goto :goto_4

    .line 113
    :catch_1
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    goto :goto_4

    .line 117
    :catchall_0
    move-exception p1

    .line 118
    goto :goto_5

    .line 119
    :catch_2
    move-exception p1

    .line 120
    goto :goto_2

    .line 121
    :catch_3
    move-exception p1

    .line 122
    move-object v0, v5

    .line 123
    :goto_2
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 124
    .line 125
    .line 126
    :try_start_5
    iget-object p1, p0, Lcom/android/server/enterprise/general/font/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    .line 127
    .line 128
    if-eqz p1, :cond_1

    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 131
    .line 132
    .line 133
    goto :goto_3

    .line 134
    :catch_4
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    :cond_1
    :goto_3
    :try_start_6
    iget-object p0, p0, Lcom/android/server/enterprise/general/font/FontWriter;->fOut:Ljava/io/FileOutputStream;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 138
    .line 139
    if-eqz p0, :cond_2

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_2
    :goto_4
    const-string/jumbo p0, "persist.sys.flipfontpath"

    .line 143
    .line 144
    .line 145
    invoke-static {p0, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-static {v0}, Lcom/android/server/enterprise/general/font/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :goto_5
    :try_start_7
    iget-object v0, p0, Lcom/android/server/enterprise/general/font/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    .line 153
    .line 154
    if-eqz v0, :cond_3

    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 157
    .line 158
    .line 159
    goto :goto_6

    .line 160
    :catch_5
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    :cond_3
    :goto_6
    :try_start_8
    iget-object p0, p0, Lcom/android/server/enterprise/general/font/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 164
    .line 165
    if-eqz p0, :cond_4

    .line 166
    .line 167
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 168
    .line 169
    .line 170
    goto :goto_7

    .line 171
    :catch_6
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    :cond_4
    :goto_7
    throw p1
.end method
