.class public abstract Lcom/android/server/HermesBigdataFunction;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CHECK_CHIPSET_LISTS:[Ljava/lang/String;

.field public static final PARSING_TAG:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "DrmLibFs"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/server/HermesBigdataFunction;->PARSING_TAG:[Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, "SM8550"

    .line 10
    .line 11
    filled-new-array {v0}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/android/server/HermesBigdataFunction;->CHECK_CHIPSET_LISTS:[Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public static cleanBigdataLogFiles()V
    .locals 11

    .line 1
    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_PERMISSION_DENIED:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_UNKNOWN:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 4
    .line 5
    const-string v2, "EUCKR"

    .line 6
    .line 7
    :try_start_0
    new-instance v3, Ljava/io/File;

    .line 8
    .line 9
    const-string v4, "/data/log/sepunion/hermes/parsed_skeymast.txt"

    .line 10
    .line 11
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v4, Ljava/io/File;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 32
    .line 33
    .line 34
    move-result v5
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 35
    const-string v6, "HERMES#BigDataFunction"

    .line 36
    .line 37
    if-eqz v5, :cond_0

    .line 38
    .line 39
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->length()J

    .line 40
    .line 41
    .line 42
    move-result-wide v7

    .line 43
    const-wide/32 v9, 0x100000

    .line 44
    .line 45
    .line 46
    cmp-long v5, v7, v9

    .line 47
    .line 48
    if-lez v5, :cond_0

    .line 49
    .line 50
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_0

    .line 55
    .line 56
    const-string v5, "[cleanBigdataLogFiles] exceed size of bigdata log file is deleted"

    .line 57
    .line 58
    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-nez v5, :cond_1

    .line 66
    .line 67
    const-string v2, "[cleanBigdataLogFiles] There is no collected bigdata log"

    .line 68
    .line 69
    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_1
    :try_start_2
    new-instance v5, Ljava/io/FileOutputStream;

    .line 74
    .line 75
    const/4 v7, 0x1

    .line 76
    invoke-direct {v5, v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 77
    .line 78
    .line 79
    :try_start_3
    new-instance v4, Ljava/io/BufferedWriter;

    .line 80
    .line 81
    new-instance v7, Ljava/io/OutputStreamWriter;

    .line 82
    .line 83
    invoke-direct {v7, v5, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-direct {v4, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 87
    .line 88
    .line 89
    :try_start_4
    new-instance v7, Ljava/io/FileInputStream;

    .line 90
    .line 91
    invoke-direct {v7, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 92
    .line 93
    .line 94
    :try_start_5
    new-instance v8, Ljava/io/BufferedReader;

    .line 95
    .line 96
    new-instance v9, Ljava/io/InputStreamReader;

    .line 97
    .line 98
    invoke-direct {v9, v7, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 102
    .line 103
    .line 104
    :goto_0
    :try_start_6
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    if-eqz v2, :cond_2

    .line 109
    .line 110
    invoke-virtual {v4, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :catchall_0
    move-exception v2

    .line 118
    goto :goto_1

    .line 119
    :cond_2
    :try_start_7
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 120
    .line 121
    .line 122
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 123
    .line 124
    .line 125
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 126
    .line 127
    .line 128
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 129
    .line 130
    .line 131
    :try_start_b
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-eqz v2, :cond_3

    .line 136
    .line 137
    const-string v2, "[cleanBigdataLogFiles] Collected bigdata log is deleted"

    .line 138
    .line 139
    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 140
    .line 141
    .line 142
    :cond_3
    const-string v0, "[cleanBigdataLogFiles] done"

    .line 143
    .line 144
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :catchall_1
    move-exception v2

    .line 149
    goto :goto_7

    .line 150
    :catchall_2
    move-exception v2

    .line 151
    goto :goto_5

    .line 152
    :catchall_3
    move-exception v2

    .line 153
    goto :goto_3

    .line 154
    :goto_1
    :try_start_c
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :catchall_4
    move-exception v3

    .line 159
    :try_start_d
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 160
    .line 161
    .line 162
    :goto_2
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 163
    :goto_3
    :try_start_e
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 164
    .line 165
    .line 166
    goto :goto_4

    .line 167
    :catchall_5
    move-exception v3

    .line 168
    :try_start_f
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 169
    .line 170
    .line 171
    :goto_4
    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 172
    :goto_5
    :try_start_10
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 173
    .line 174
    .line 175
    goto :goto_6

    .line 176
    :catchall_6
    move-exception v3

    .line 177
    :try_start_11
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 178
    .line 179
    .line 180
    :goto_6
    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 181
    :goto_7
    :try_start_12
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 182
    .line 183
    .line 184
    goto :goto_8

    .line 185
    :catchall_7
    move-exception v3

    .line 186
    :try_start_13
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 187
    .line 188
    .line 189
    :goto_8
    throw v2
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0

    .line 190
    :catch_0
    :try_start_14
    new-instance v2, Lcom/android/server/BigdataException;

    .line 191
    .line 192
    invoke-direct {v2, v1}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    .line 193
    .line 194
    .line 195
    throw v2

    .line 196
    :catch_1
    new-instance v2, Lcom/android/server/BigdataException;

    .line 197
    .line 198
    invoke-direct {v2, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    .line 199
    .line 200
    .line 201
    throw v2

    .line 202
    :catch_2
    new-instance v2, Lcom/android/server/BigdataException;

    .line 203
    .line 204
    sget-object v3, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_IO_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 205
    .line 206
    invoke-direct {v2, v3}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    .line 207
    .line 208
    .line 209
    throw v2

    .line 210
    :catch_3
    new-instance v2, Lcom/android/server/BigdataException;

    .line 211
    .line 212
    sget-object v3, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_FILE_NOT_FOUND:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 213
    .line 214
    invoke-direct {v2, v3}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    .line 215
    .line 216
    .line 217
    throw v2
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_14} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_14} :catch_5
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_4

    .line 218
    :catch_4
    new-instance v0, Lcom/android/server/BigdataException;

    .line 219
    .line 220
    invoke-direct {v0, v1}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    .line 221
    .line 222
    .line 223
    throw v0

    .line 224
    :catch_5
    new-instance v1, Lcom/android/server/BigdataException;

    .line 225
    .line 226
    invoke-direct {v1, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    .line 227
    .line 228
    .line 229
    throw v1

    .line 230
    :catch_6
    new-instance v0, Lcom/android/server/BigdataException;

    .line 231
    .line 232
    sget-object v1, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_NULLPOINTER_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 233
    .line 234
    invoke-direct {v0, v1}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    .line 235
    .line 236
    .line 237
    throw v0
.end method

.method public static cleanDumpstateFiles()V
    .locals 9

    .line 1
    const-string/jumbo v0, "dumpstate_skeymaster"

    .line 2
    .line 3
    .line 4
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 5
    .line 6
    const-string v2, "/data/log/"

    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/android/server/HermesBigdataFunction$1;

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    invoke-direct {v2, v3}, Lcom/android/server/HermesBigdataFunction$1;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    array-length v2, v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    const/4 v3, 0x0

    .line 23
    move v4, v3

    .line 24
    :goto_0
    const-string v5, "HERMES#BigDataFunction"

    .line 25
    .line 26
    if-ge v4, v2, :cond_1

    .line 27
    .line 28
    :try_start_1
    aget-object v6, v1, v4

    .line 29
    .line 30
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    invoke-virtual {v7, v0, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    new-instance v8, Ljava/io/File;

    .line 43
    .line 44
    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_0

    .line 52
    .line 53
    const-string v6, "[cleanDumpstateFiles] zipfile rename is success"

    .line 54
    .line 55
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    new-instance v0, Ljava/io/File;

    .line 62
    .line 63
    const-string v1, "/data/log/sepunion/hermes/"

    .line 64
    .line 65
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    new-instance v1, Lcom/android/server/HermesBigdataFunction$1;

    .line 69
    .line 70
    const/4 v2, 0x3

    .line 71
    invoke-direct {v1, v2}, Lcom/android/server/HermesBigdataFunction$1;-><init>(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    array-length v1, v0

    .line 79
    :goto_1
    if-ge v3, v1, :cond_3

    .line 80
    .line 81
    aget-object v2, v0, v3

    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-nez v2, :cond_2

    .line 88
    .line 89
    const-string v2, "[cleanDumpstateFiles] filtered txt file deletion failed"

    .line 90
    .line 91
    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 92
    .line 93
    .line 94
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    const-string v0, "[CleanDumpstate] done"

    .line 98
    .line 99
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :catch_0
    new-instance v0, Lcom/android/server/BigdataException;

    .line 104
    .line 105
    sget-object v1, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_UNKNOWN:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 106
    .line 107
    invoke-direct {v0, v1}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    .line 108
    .line 109
    .line 110
    throw v0

    .line 111
    :catch_1
    new-instance v0, Lcom/android/server/BigdataException;

    .line 112
    .line 113
    sget-object v1, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_PERMISSION_DENIED:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 114
    .line 115
    invoke-direct {v0, v1}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    .line 116
    .line 117
    .line 118
    throw v0

    .line 119
    :catch_2
    new-instance v0, Lcom/android/server/BigdataException;

    .line 120
    .line 121
    sget-object v1, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_NULLPOINTER_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 122
    .line 123
    invoke-direct {v0, v1}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    .line 124
    .line 125
    .line 126
    throw v0
.end method

.method public static parseDumpstate()V
    .locals 18

    .line 1
    sget-object v1, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_PERMISSION_DENIED:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 2
    .line 3
    sget-object v2, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_UNKNOWN:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 4
    .line 5
    const-string v0, "EUCKR"

    .line 6
    .line 7
    const-string v3, "HERMES#BigDataFunction"

    .line 8
    .line 9
    const-string v4, "[parseDumpstate] started"

    .line 10
    .line 11
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :try_start_0
    new-instance v4, Ljava/io/File;

    .line 15
    .line 16
    const-string v5, "/data/log/sepunion/hermes/"

    .line 17
    .line 18
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v5, Lcom/android/server/HermesBigdataFunction$1;

    .line 22
    .line 23
    const/4 v6, 0x1

    .line 24
    invoke-direct {v5, v6}, Lcom/android/server/HermesBigdataFunction$1;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v5}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    new-instance v5, Ljava/io/File;

    .line 32
    .line 33
    const-string v6, "/data/log/sepunion/hermes/parsed_skeymast.txt"

    .line 34
    .line 35
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-eqz v6, :cond_0

    .line 43
    .line 44
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 45
    .line 46
    .line 47
    move-result-wide v6

    .line 48
    const-wide/32 v8, 0x100000

    .line 49
    .line 50
    .line 51
    cmp-long v6, v6, v8

    .line 52
    .line 53
    if-lez v6, :cond_0

    .line 54
    .line 55
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_0

    .line 60
    .line 61
    const-string v6, "[parseDumpstate] saved log is cleared"

    .line 62
    .line 63
    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 64
    .line 65
    .line 66
    :cond_0
    array-length v6, v4

    .line 67
    const/4 v7, 0x0

    .line 68
    move v8, v7

    .line 69
    :goto_0
    if-ge v8, v6, :cond_4

    .line 70
    .line 71
    aget-object v9, v4, v8

    .line 72
    .line 73
    :try_start_1
    new-instance v10, Ljava/io/FileOutputStream;

    .line 74
    .line 75
    const/4 v11, 0x1

    .line 76
    invoke-direct {v10, v5, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 77
    .line 78
    .line 79
    :try_start_2
    new-instance v11, Ljava/io/BufferedWriter;

    .line 80
    .line 81
    new-instance v12, Ljava/io/OutputStreamWriter;

    .line 82
    .line 83
    invoke-direct {v12, v10, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-direct {v11, v12}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 87
    .line 88
    .line 89
    :try_start_3
    new-instance v12, Ljava/io/FileInputStream;

    .line 90
    .line 91
    invoke-direct {v12, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 92
    .line 93
    .line 94
    :try_start_4
    new-instance v9, Ljava/io/BufferedReader;

    .line 95
    .line 96
    new-instance v13, Ljava/io/InputStreamReader;

    .line 97
    .line 98
    invoke-direct {v13, v12, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-direct {v9, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 102
    .line 103
    .line 104
    :try_start_5
    sget-object v13, Lcom/android/server/HermesBigdataFunction;->PARSING_TAG:[Ljava/lang/String;

    .line 105
    .line 106
    new-instance v14, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    aget-object v13, v13, v7

    .line 112
    .line 113
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v13

    .line 120
    new-instance v14, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string v15, "^\\s*\\d{2}-\\d{2}\\s\\d{2}:\\d{2}:\\d{2}\\.\\d+\\s+(\\d+|root)\\s+\\d+\\s+\\d+\\s.\\s+"

    .line 123
    .line 124
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v13, ":.*"

    .line 131
    .line 132
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v13

    .line 139
    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 140
    .line 141
    .line 142
    move-result-object v13

    .line 143
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 144
    .line 145
    .line 146
    move-result-wide v14

    .line 147
    :cond_1
    :goto_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    if-eqz v7, :cond_2

    .line 152
    .line 153
    invoke-virtual {v13, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 154
    .line 155
    .line 156
    move-result-object v16

    .line 157
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->find()Z

    .line 158
    .line 159
    .line 160
    move-result v16

    .line 161
    if-eqz v16, :cond_1

    .line 162
    .line 163
    invoke-virtual {v11, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v11}, Ljava/io/BufferedWriter;->newLine()V

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :catchall_0
    move-exception v0

    .line 171
    move-object v3, v0

    .line 172
    goto :goto_2

    .line 173
    :cond_2
    invoke-virtual {v11}, Ljava/io/BufferedWriter;->flush()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 177
    .line 178
    .line 179
    move-result-wide v16

    .line 180
    sub-long v16, v16, v14

    .line 181
    .line 182
    const-wide/16 v13, 0x0

    .line 183
    .line 184
    cmp-long v7, v16, v13

    .line 185
    .line 186
    if-eqz v7, :cond_3

    .line 187
    .line 188
    const-string v7, "-----------------------------"

    .line 189
    .line 190
    invoke-virtual {v11, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v11}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 194
    .line 195
    .line 196
    :cond_3
    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 197
    .line 198
    .line 199
    :try_start_7
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 200
    .line 201
    .line 202
    :try_start_8
    invoke-virtual {v11}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 203
    .line 204
    .line 205
    :try_start_9
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 206
    .line 207
    .line 208
    add-int/lit8 v8, v8, 0x1

    .line 209
    .line 210
    const/4 v7, 0x0

    .line 211
    goto/16 :goto_0

    .line 212
    .line 213
    :catchall_1
    move-exception v0

    .line 214
    move-object v3, v0

    .line 215
    goto :goto_8

    .line 216
    :catchall_2
    move-exception v0

    .line 217
    move-object v3, v0

    .line 218
    goto :goto_6

    .line 219
    :catchall_3
    move-exception v0

    .line 220
    move-object v3, v0

    .line 221
    goto :goto_4

    .line 222
    :goto_2
    :try_start_a
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 223
    .line 224
    .line 225
    goto :goto_3

    .line 226
    :catchall_4
    move-exception v0

    .line 227
    move-object v4, v0

    .line 228
    :try_start_b
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 229
    .line 230
    .line 231
    :goto_3
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 232
    :goto_4
    :try_start_c
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 233
    .line 234
    .line 235
    goto :goto_5

    .line 236
    :catchall_5
    move-exception v0

    .line 237
    move-object v4, v0

    .line 238
    :try_start_d
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 239
    .line 240
    .line 241
    :goto_5
    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 242
    :goto_6
    :try_start_e
    invoke-virtual {v11}, Ljava/io/BufferedWriter;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 243
    .line 244
    .line 245
    goto :goto_7

    .line 246
    :catchall_6
    move-exception v0

    .line 247
    move-object v4, v0

    .line 248
    :try_start_f
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 249
    .line 250
    .line 251
    :goto_7
    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 252
    :goto_8
    :try_start_10
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 253
    .line 254
    .line 255
    goto :goto_9

    .line 256
    :catchall_7
    move-exception v0

    .line 257
    move-object v4, v0

    .line 258
    :try_start_11
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 259
    .line 260
    .line 261
    :goto_9
    throw v3
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    .line 262
    :catch_0
    new-instance v0, Lcom/android/server/BigdataException;

    .line 263
    .line 264
    invoke-direct {v0, v2}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    .line 265
    .line 266
    .line 267
    throw v0

    .line 268
    :catch_1
    new-instance v0, Lcom/android/server/BigdataException;

    .line 269
    .line 270
    invoke-direct {v0, v1}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    .line 271
    .line 272
    .line 273
    throw v0

    .line 274
    :catch_2
    new-instance v0, Lcom/android/server/BigdataException;

    .line 275
    .line 276
    sget-object v1, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_IO_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 277
    .line 278
    invoke-direct {v0, v1}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    .line 279
    .line 280
    .line 281
    throw v0

    .line 282
    :catch_3
    new-instance v0, Lcom/android/server/BigdataException;

    .line 283
    .line 284
    sget-object v1, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_FILE_NOT_FOUND:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 285
    .line 286
    invoke-direct {v0, v1}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    .line 287
    .line 288
    .line 289
    throw v0

    .line 290
    :cond_4
    const-string v0, "[unZipDumpstate] done"

    .line 291
    .line 292
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    .line 294
    .line 295
    return-void

    .line 296
    :catch_4
    new-instance v0, Lcom/android/server/BigdataException;

    .line 297
    .line 298
    invoke-direct {v0, v2}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    .line 299
    .line 300
    .line 301
    throw v0

    .line 302
    :catch_5
    new-instance v0, Lcom/android/server/BigdataException;

    .line 303
    .line 304
    invoke-direct {v0, v1}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    .line 305
    .line 306
    .line 307
    throw v0
.end method

.method public static unZipDumpstate()V
    .locals 15

    .line 1
    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_FILE_NOT_FOUND:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_IO_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 4
    .line 5
    const-string v2, "/data/log/sepunion/hermes/"

    .line 6
    .line 7
    sget-object v3, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_PERMISSION_DENIED:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 8
    .line 9
    sget-object v4, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_UNKNOWN:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 10
    .line 11
    const-string v5, "HERMES#BigDataFunction"

    .line 12
    .line 13
    const-string v6, "[unZipDumpstate] started"

    .line 14
    .line 15
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    :try_start_0
    new-instance v6, Ljava/io/File;

    .line 19
    .line 20
    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    if-nez v7, :cond_0

    .line 28
    .line 29
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 30
    .line 31
    .line 32
    move-result v6
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v6, 0x1

    .line 35
    :goto_0
    if-eqz v6, :cond_5

    .line 36
    .line 37
    :try_start_1
    new-instance v6, Ljava/io/File;

    .line 38
    .line 39
    const-string v7, "/data/log/"

    .line 40
    .line 41
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance v7, Lcom/android/server/HermesBigdataFunction$1;

    .line 45
    .line 46
    const/4 v8, 0x0

    .line 47
    invoke-direct {v7, v8}, Lcom/android/server/HermesBigdataFunction$1;-><init>(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v6, v7}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 51
    .line 52
    .line 53
    move-result-object v6
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 54
    array-length v7, v6

    .line 55
    const/4 v8, 0x0

    .line 56
    move v9, v8

    .line 57
    :goto_1
    if-ge v9, v7, :cond_4

    .line 58
    .line 59
    aget-object v10, v6, v9

    .line 60
    .line 61
    :try_start_2
    new-instance v11, Ljava/util/zip/ZipInputStream;

    .line 62
    .line 63
    new-instance v12, Ljava/io/FileInputStream;

    .line 64
    .line 65
    invoke-direct {v12, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {v11, v12}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/util/zip/ZipException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 69
    .line 70
    .line 71
    :try_start_3
    invoke-virtual {v11}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    :goto_2
    if-eqz v10, :cond_3

    .line 76
    .line 77
    invoke-virtual {v10}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v12

    .line 81
    const-string/jumbo v13, "dumpstate_skeymaster"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v12

    .line 88
    if-eqz v12, :cond_2

    .line 89
    .line 90
    new-instance v12, Ljava/io/File;

    .line 91
    .line 92
    invoke-virtual {v10}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v10

    .line 96
    invoke-direct {v12, v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 97
    .line 98
    .line 99
    :try_start_4
    new-instance v10, Ljava/io/BufferedOutputStream;

    .line 100
    .line 101
    new-instance v13, Ljava/io/FileOutputStream;

    .line 102
    .line 103
    invoke-direct {v13, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 104
    .line 105
    .line 106
    invoke-direct {v10, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 107
    .line 108
    .line 109
    :try_start_5
    new-instance v13, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v14, "[unZipDumpstate] extract files : "

    .line 115
    .line 116
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v12

    .line 123
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v12

    .line 130
    invoke-static {v5, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    const/16 v12, 0x1000

    .line 134
    .line 135
    new-array v12, v12, [B

    .line 136
    .line 137
    :goto_3
    invoke-virtual {v11, v12}, Ljava/util/zip/ZipInputStream;->read([B)I

    .line 138
    .line 139
    .line 140
    move-result v13

    .line 141
    const/4 v14, -0x1

    .line 142
    if-eq v13, v14, :cond_1

    .line 143
    .line 144
    invoke-virtual {v10, v12, v8, v13}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :catchall_0
    move-exception v2

    .line 149
    goto :goto_4

    .line 150
    :cond_1
    :try_start_6
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 151
    .line 152
    .line 153
    goto :goto_6

    .line 154
    :catchall_1
    move-exception v2

    .line 155
    goto :goto_7

    .line 156
    :goto_4
    :try_start_7
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 157
    .line 158
    .line 159
    goto :goto_5

    .line 160
    :catchall_2
    move-exception v5

    .line 161
    :try_start_8
    invoke-virtual {v2, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 162
    .line 163
    .line 164
    :goto_5
    throw v2
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 165
    :catch_0
    :try_start_9
    new-instance v2, Lcom/android/server/BigdataException;

    .line 166
    .line 167
    invoke-direct {v2, v1}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    .line 168
    .line 169
    .line 170
    throw v2

    .line 171
    :catch_1
    new-instance v2, Lcom/android/server/BigdataException;

    .line 172
    .line 173
    invoke-direct {v2, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    .line 174
    .line 175
    .line 176
    throw v2

    .line 177
    :cond_2
    invoke-virtual {v11}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    .line 178
    .line 179
    .line 180
    move-result-object v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 181
    goto :goto_2

    .line 182
    :cond_3
    :goto_6
    :try_start_a
    invoke-virtual {v11}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/util/zip/ZipException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 183
    .line 184
    .line 185
    add-int/lit8 v9, v9, 0x1

    .line 186
    .line 187
    goto/16 :goto_1

    .line 188
    .line 189
    :goto_7
    :try_start_b
    invoke-virtual {v11}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 190
    .line 191
    .line 192
    goto :goto_8

    .line 193
    :catchall_3
    move-exception v5

    .line 194
    :try_start_c
    invoke-virtual {v2, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 195
    .line 196
    .line 197
    :goto_8
    throw v2
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/util/zip/ZipException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 198
    :catch_2
    new-instance v0, Lcom/android/server/BigdataException;

    .line 199
    .line 200
    invoke-direct {v0, v4}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    .line 201
    .line 202
    .line 203
    throw v0

    .line 204
    :catch_3
    new-instance v0, Lcom/android/server/BigdataException;

    .line 205
    .line 206
    invoke-direct {v0, v3}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    .line 207
    .line 208
    .line 209
    throw v0

    .line 210
    :catch_4
    new-instance v0, Lcom/android/server/BigdataException;

    .line 211
    .line 212
    invoke-direct {v0, v1}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    .line 213
    .line 214
    .line 215
    throw v0

    .line 216
    :catch_5
    new-instance v0, Lcom/android/server/BigdataException;

    .line 217
    .line 218
    sget-object v1, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_ZIP_EXCEPTION:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 219
    .line 220
    invoke-direct {v0, v1}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    .line 221
    .line 222
    .line 223
    throw v0

    .line 224
    :catch_6
    new-instance v1, Lcom/android/server/BigdataException;

    .line 225
    .line 226
    invoke-direct {v1, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    .line 227
    .line 228
    .line 229
    throw v1

    .line 230
    :cond_4
    const-string v0, "[unZipDumpstate] done"

    .line 231
    .line 232
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    return-void

    .line 236
    :catch_7
    new-instance v0, Lcom/android/server/BigdataException;

    .line 237
    .line 238
    invoke-direct {v0, v4}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    .line 239
    .line 240
    .line 241
    throw v0

    .line 242
    :catch_8
    new-instance v0, Lcom/android/server/BigdataException;

    .line 243
    .line 244
    invoke-direct {v0, v3}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    .line 245
    .line 246
    .line 247
    throw v0

    .line 248
    :cond_5
    :try_start_d
    new-instance v0, Lcom/android/server/BigdataException;

    .line 249
    .line 250
    sget-object v1, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_FILE_CREATED_FAILED:Lcom/android/server/HermesBigdataFunction$BigdataError;

    .line 251
    .line 252
    invoke-direct {v0, v1}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    .line 253
    .line 254
    .line 255
    throw v0
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    .line 256
    :catch_9
    new-instance v0, Lcom/android/server/BigdataException;

    .line 257
    .line 258
    invoke-direct {v0, v4}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    .line 259
    .line 260
    .line 261
    throw v0

    .line 262
    :catch_a
    new-instance v0, Lcom/android/server/BigdataException;

    .line 263
    .line 264
    invoke-direct {v0, v3}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    .line 265
    .line 266
    .line 267
    throw v0
.end method
