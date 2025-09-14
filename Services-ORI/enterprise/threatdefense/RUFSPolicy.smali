.class public final Lcom/android/server/enterprise/threatdefense/RUFSPolicy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPackageName:Ljava/lang/String;

.field public final mPolicyVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "RUFSPolicy"

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->mPackageName:Ljava/lang/String;

    .line 7
    .line 8
    const-string p1, "/data/system/.aasa/AASApolicy/mtdlist.output.txt"

    .line 9
    .line 10
    const-string v1, "/system/etc/mtdlist.output.txt"

    .line 11
    .line 12
    const-string v2, "Read system path="

    .line 13
    .line 14
    :try_start_0
    new-instance v3, Ljava/io/File;

    .line 15
    .line 16
    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v4, Ljava/io/File;

    .line 20
    .line 21
    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 25
    .line 26
    .line 27
    move-result v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    const-string v5, "Signature verification failed"

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    :try_start_1
    invoke-static {v1}, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->readData(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    new-instance v3, Lcom/android/server/enterprise/threatdefense/MTDSignature;

    .line 38
    .line 39
    invoke-direct {v3, v1}, Lcom/android/server/enterprise/threatdefense/MTDSignature;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/android/server/enterprise/threatdefense/MTDSignature;->getVerifiedData()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-nez v1, :cond_0

    .line 47
    .line 48
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :cond_0
    if-eqz v1, :cond_1

    .line 52
    .line 53
    new-instance v3, Lcom/android/server/enterprise/threatdefense/RUFSParser;

    .line 54
    .line 55
    invoke-direct {v3, v1}, Lcom/android/server/enterprise/threatdefense/RUFSParser;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p1

    .line 60
    goto/16 :goto_3

    .line 61
    .line 62
    :catch_1
    move-exception p1

    .line 63
    goto/16 :goto_4

    .line 64
    .line 65
    :catch_2
    move-exception p1

    .line 66
    goto/16 :goto_5

    .line 67
    .line 68
    :cond_1
    move-object v3, v6

    .line 69
    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    invoke-static {p1}, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->readData(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    new-instance v1, Lcom/android/server/enterprise/threatdefense/MTDSignature;

    .line 80
    .line 81
    invoke-direct {v1, p1}, Lcom/android/server/enterprise/threatdefense/MTDSignature;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/android/server/enterprise/threatdefense/MTDSignature;->getVerifiedData()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    if-nez p1, :cond_2

    .line 89
    .line 90
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    :cond_2
    if-eqz p1, :cond_3

    .line 94
    .line 95
    new-instance v6, Lcom/android/server/enterprise/threatdefense/RUFSParser;

    .line 96
    .line 97
    invoke-direct {v6, p1}, Lcom/android/server/enterprise/threatdefense/RUFSParser;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_3
    const/4 p1, 0x0

    .line 101
    if-nez v3, :cond_4

    .line 102
    .line 103
    if-nez v6, :cond_4

    .line 104
    .line 105
    const-string v1, "Default : No RUFS policy files"

    .line 106
    .line 107
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    goto :goto_6

    .line 111
    :cond_4
    if-eqz v3, :cond_7

    .line 112
    .line 113
    const/4 v1, 0x1

    .line 114
    if-eqz v6, :cond_6

    .line 115
    .line 116
    invoke-virtual {v3}, Lcom/android/server/enterprise/threatdefense/RUFSParser;->getPolicyVersion()I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    invoke-virtual {v6}, Lcom/android/server/enterprise/threatdefense/RUFSParser;->getPolicyVersion()I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-lt v4, v5, :cond_5

    .line 125
    .line 126
    const-string p1, "Using System parser"

    .line 127
    .line 128
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    move p1, v1

    .line 132
    :cond_5
    const-string v1, "Using Data parser"

    .line 133
    .line 134
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_6
    const-string p1, "System Parser Exists Only. "

    .line 139
    .line 140
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    move p1, v1

    .line 144
    :cond_7
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    if-eqz p1, :cond_8

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_8
    move-object v3, v6

    .line 163
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->readPolicyVersion(Lcom/android/server/enterprise/threatdefense/RUFSParser;)I

    .line 164
    .line 165
    .line 166
    move-result p1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 167
    goto :goto_6

    .line 168
    :goto_3
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 169
    .line 170
    .line 171
    const/16 p1, -0x68

    .line 172
    .line 173
    goto :goto_6

    .line 174
    :goto_4
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 175
    .line 176
    .line 177
    const/16 p1, -0x6b

    .line 178
    .line 179
    goto :goto_6

    .line 180
    :goto_5
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 181
    .line 182
    .line 183
    const/16 p1, -0x6d

    .line 184
    .line 185
    :goto_6
    iput p1, p0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->mPolicyVersion:I

    .line 186
    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    const-string/jumbo v2, "package="

    .line 190
    .line 191
    .line 192
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->mPackageName:Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string p0, ", version="

    .line 201
    .line 202
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    return-void
.end method

.method public static readData(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "IOException"

    .line 2
    .line 3
    const-string v1, "RUFSPolicy"

    .line 4
    .line 5
    const-string v2, "FileNotFoundException : "

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    .line 9
    .line 10
    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 11
    .line 12
    .line 13
    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    .line 14
    .line 15
    new-instance v5, Ljava/io/InputStreamReader;

    .line 16
    .line 17
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 18
    .line 19
    invoke-direct {v5, v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    .line 24
    .line 25
    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-static {v6}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    check-cast v5, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    .line 43
    :try_start_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception p0

    .line 51
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    :goto_0
    move-object v3, v5

    .line 55
    goto :goto_5

    .line 56
    :catchall_0
    move-exception v2

    .line 57
    move-object v3, p0

    .line 58
    goto :goto_6

    .line 59
    :catch_1
    move-exception v5

    .line 60
    goto :goto_1

    .line 61
    :catch_2
    move-exception v2

    .line 62
    goto :goto_4

    .line 63
    :catchall_1
    move-exception v2

    .line 64
    goto :goto_6

    .line 65
    :catch_3
    move-exception v5

    .line 66
    move-object p0, v3

    .line 67
    goto :goto_1

    .line 68
    :catch_4
    move-exception v2

    .line 69
    move-object p0, v3

    .line 70
    goto :goto_4

    .line 71
    :catchall_2
    move-exception v2

    .line 72
    move-object v4, v3

    .line 73
    goto :goto_6

    .line 74
    :catch_5
    move-exception v5

    .line 75
    move-object p0, v3

    .line 76
    move-object v4, p0

    .line 77
    goto :goto_1

    .line 78
    :catch_6
    move-exception v2

    .line 79
    move-object p0, v3

    .line 80
    move-object v4, p0

    .line 81
    goto :goto_4

    .line 82
    :goto_1
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 99
    .line 100
    .line 101
    if-eqz p0, :cond_0

    .line 102
    .line 103
    :try_start_5
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :catch_7
    move-exception p0

    .line 108
    goto :goto_3

    .line 109
    :cond_0
    :goto_2
    if-eqz v4, :cond_2

    .line 110
    .line 111
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 112
    .line 113
    .line 114
    goto :goto_5

    .line 115
    :goto_3
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .line 117
    .line 118
    goto :goto_5

    .line 119
    :goto_4
    :try_start_6
    const-string v5, "SecurityException"

    .line 120
    .line 121
    invoke-static {v1, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 122
    .line 123
    .line 124
    if-eqz p0, :cond_1

    .line 125
    .line 126
    :try_start_7
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    .line 127
    .line 128
    .line 129
    :cond_1
    if-eqz v4, :cond_2

    .line 130
    .line 131
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 132
    .line 133
    .line 134
    :cond_2
    :goto_5
    return-object v3

    .line 135
    :goto_6
    if-eqz v3, :cond_3

    .line 136
    .line 137
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 138
    .line 139
    .line 140
    goto :goto_7

    .line 141
    :catch_8
    move-exception p0

    .line 142
    goto :goto_8

    .line 143
    :cond_3
    :goto_7
    if-eqz v4, :cond_4

    .line 144
    .line 145
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    .line 146
    .line 147
    .line 148
    goto :goto_9

    .line 149
    :goto_8
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    .line 151
    .line 152
    :cond_4
    :goto_9
    throw v2
.end method


# virtual methods
.method public final readPolicyVersion(Lcom/android/server/enterprise/threatdefense/RUFSParser;)I
    .locals 7

    .line 1
    const-string v0, "RUFSPolicy"

    .line 2
    .line 3
    const-string v1, "Parser version : "

    .line 4
    .line 5
    const-string v2, "RUFSParser : "

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/16 p0, -0x6a

    .line 10
    .line 11
    return p0

    .line 12
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/android/server/enterprise/threatdefense/RUFSParser;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/android/server/enterprise/threatdefense/RUFSParser;->getExceptionList()Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-object p1, p1, Lcom/android/server/enterprise/threatdefense/RUFSParser;->mVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 41
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Ljava/lang/String;

    .line 73
    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string/jumbo v4, "exception list : "

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    const-string v3, ":"

    .line 96
    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    array-length v3, v2

    .line 102
    const/4 v4, 0x1

    .line 103
    if-le v3, v4, :cond_1

    .line 104
    .line 105
    iget-object v3, p0, Lcom/android/server/enterprise/threatdefense/RUFSPolicy;->mPackageName:Ljava/lang/String;

    .line 106
    .line 107
    if-eqz v3, :cond_1

    .line 108
    .line 109
    const/4 v5, 0x0

    .line 110
    aget-object v6, v2, v5

    .line 111
    .line 112
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-eqz v3, :cond_1

    .line 117
    .line 118
    aget-object p0, v2, v4

    .line 119
    .line 120
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    new-instance p0, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v1, "Exception package : "

    .line 130
    .line 131
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    aget-object v1, v2, v5

    .line 135
    .line 136
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v1, " version : "

    .line 140
    .line 141
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    aget-object v1, v2, v4

    .line 145
    .line 146
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v1, "=="

    .line 150
    .line 151
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :catch_0
    move-exception p0

    .line 166
    goto :goto_0

    .line 167
    :catch_1
    move-exception p0

    .line 168
    goto :goto_1

    .line 169
    :catch_2
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 170
    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    const-string v2, "RUFSParser, Invalid format : "

    .line 174
    .line 175
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw p0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 189
    :goto_0
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 190
    .line 191
    .line 192
    const/16 p1, -0x68

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :goto_1
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 196
    .line 197
    .line 198
    const/16 p1, -0x6d

    .line 199
    .line 200
    :cond_2
    :goto_2
    const-string p0, "Parder ret : "

    .line 201
    .line 202
    invoke-static {p1, p0, v0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    return p1
.end method
