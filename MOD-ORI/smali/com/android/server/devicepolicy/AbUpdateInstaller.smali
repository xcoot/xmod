.class public final Lcom/android/server/devicepolicy/AbUpdateInstaller;
.super Lcom/android/server/devicepolicy/UpdateInstaller;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final errorCodesMap:Ljava/util/Map;

.field public static final errorStringsMap:Ljava/util/Map;


# instance fields
.field public mEntries:Ljava/util/Enumeration;

.field public mOffsetForUpdate:J

.field public mPackedUpdateFile:Ljava/util/zip/ZipFile;

.field public mProperties:Ljava/util/List;

.field public mSizeForUpdate:J

.field public mUpdateInstalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    const/16 v3, 0x14

    .line 15
    .line 16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    const/4 v5, 0x2

    .line 21
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    const/16 v4, 0x33

    .line 29
    .line 30
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    const/16 v4, 0xc

    .line 38
    .line 39
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    const/4 v6, 0x3

    .line 44
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    const/16 v5, 0xb

    .line 52
    .line 53
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    const/4 v7, 0x6

    .line 61
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    invoke-virtual {v0, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    const/16 v8, 0xa

    .line 69
    .line 70
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    invoke-virtual {v0, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    const/16 v9, 0x1a

    .line 78
    .line 79
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    invoke-virtual {v0, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    const/4 v6, 0x5

    .line 87
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v9

    .line 91
    invoke-virtual {v0, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    const/4 v9, 0x7

    .line 95
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    invoke-virtual {v0, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    const/16 v10, 0x9

    .line 103
    .line 104
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v11

    .line 108
    invoke-virtual {v0, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    const/16 v11, 0x34

    .line 112
    .line 113
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v12

    .line 117
    invoke-virtual {v0, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    sput-object v0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->errorCodesMap:Ljava/util/Map;

    .line 121
    .line 122
    new-instance v0, Ljava/util/HashMap;

    .line 123
    .line 124
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v2, "Unknown error with error code = "

    .line 128
    .line 129
    const-string v12, "The delta update payload was targeted for another version or the source partitionwas modified after it was installed"

    .line 130
    .line 131
    invoke-static {v1, v0, v2, v3, v12}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const-string v1, "Failed to finish the configured postinstall works."

    .line 135
    .line 136
    const-string v2, "Failed to open one of the partitions it tried to write to or read data from."

    .line 137
    .line 138
    invoke-static {v6, v0, v1, v9, v2}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const-string v1, "Payload mismatch error."

    .line 142
    .line 143
    const-string v2, "Failed to read the payload data from the given URL."

    .line 144
    .line 145
    invoke-static {v7, v0, v1, v10, v2}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const-string v1, "Payload hash error."

    .line 149
    .line 150
    const-string v2, "Payload size mismatch error."

    .line 151
    .line 152
    invoke-static {v8, v0, v1, v5, v2}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const-string v1, "Failed to verify the signature of the payload."

    .line 156
    .line 157
    const-string v2, "The payload has been successfully installed,but the active slot was not flipped."

    .line 158
    .line 159
    invoke-static {v4, v0, v1, v11, v2}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 160
    .line 161
    .line 162
    sput-object v0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->errorStringsMap:Ljava/util/Map;

    .line 163
    .line 164
    return-void
.end method


# virtual methods
.method public final applyPayload(Ljava/lang/String;)V
    .locals 12

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mEntries:Ljava/util/Enumeration;

    .line 4
    .line 5
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x3

    .line 10
    const-string v4, "UpdateInstaller"

    .line 11
    .line 12
    if-eqz v2, :cond_6

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mEntries:Ljava/util/Enumeration;

    .line 15
    .line 16
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    add-int/lit8 v6, v6, 0x1e

    .line 31
    .line 32
    int-to-long v6, v6

    .line 33
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    .line 34
    .line 35
    .line 36
    move-result-wide v8

    .line 37
    add-long/2addr v8, v6

    .line 38
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getExtra()[B

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    if-nez v6, :cond_1

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getExtra()[B

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    array-length v6, v6

    .line 51
    :goto_1
    int-to-long v6, v6

    .line 52
    add-long/2addr v8, v6

    .line 53
    add-long/2addr v0, v8

    .line 54
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-eqz v6, :cond_2

    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    .line 61
    .line 62
    .line 63
    move-result-wide v2

    .line 64
    sub-long/2addr v0, v2

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const-string/jumbo v6, "payload.bin"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-eqz v6, :cond_4

    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getMethod()I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_3

    .line 80
    .line 81
    const-string p1, "Invalid compression method."

    .line 82
    .line 83
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v3, p1}, Lcom/android/server/devicepolicy/UpdateInstaller;->notifyCallbackOnError(ILjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_3
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    .line 91
    .line 92
    .line 93
    move-result-wide v3

    .line 94
    iput-wide v3, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mSizeForUpdate:J

    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    .line 97
    .line 98
    .line 99
    move-result-wide v2

    .line 100
    sub-long v2, v0, v2

    .line 101
    .line 102
    iput-wide v2, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mOffsetForUpdate:J

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_4
    const-string/jumbo v3, "payload_properties.txt"

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-eqz v3, :cond_0

    .line 113
    .line 114
    new-instance v3, Ljava/io/BufferedReader;

    .line 115
    .line 116
    new-instance v4, Ljava/io/InputStreamReader;

    .line 117
    .line 118
    iget-object v5, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mPackedUpdateFile:Ljava/util/zip/ZipFile;

    .line 119
    .line 120
    invoke-virtual {v5, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 125
    .line 126
    .line 127
    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 128
    .line 129
    .line 130
    :goto_2
    :try_start_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    if-eqz v2, :cond_5

    .line 135
    .line 136
    iget-object v4, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mProperties:Ljava/util/List;

    .line 137
    .line 138
    check-cast v4, Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :catchall_0
    move-exception p0

    .line 145
    goto :goto_3

    .line 146
    :cond_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 147
    .line 148
    .line 149
    goto/16 :goto_0

    .line 150
    .line 151
    :goto_3
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 152
    .line 153
    .line 154
    goto :goto_4

    .line 155
    :catchall_1
    move-exception p1

    .line 156
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 157
    .line 158
    .line 159
    :goto_4
    throw p0

    .line 160
    :cond_6
    iget-object v0, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mProperties:Ljava/util/List;

    .line 161
    .line 162
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    new-instance v1, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticLambda1;

    .line 167
    .line 168
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    move-object v11, v0

    .line 176
    check-cast v11, [Ljava/lang/String;

    .line 177
    .line 178
    iget-wide v0, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mSizeForUpdate:J

    .line 179
    .line 180
    const-wide/16 v5, -0x1

    .line 181
    .line 182
    cmp-long v0, v0, v5

    .line 183
    .line 184
    if-nez v0, :cond_7

    .line 185
    .line 186
    const-string p1, "Failed to find payload entry in the given package."

    .line 187
    .line 188
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0, v3, p1}, Lcom/android/server/devicepolicy/UpdateInstaller;->notifyCallbackOnError(ILjava/lang/String;)V

    .line 192
    .line 193
    .line 194
    return-void

    .line 195
    :cond_7
    new-instance v5, Landroid/os/UpdateEngine;

    .line 196
    .line 197
    invoke-direct {v5}, Landroid/os/UpdateEngine;-><init>()V

    .line 198
    .line 199
    .line 200
    new-instance v0, Lcom/android/server/devicepolicy/AbUpdateInstaller$DelegatingUpdateEngineCallback;

    .line 201
    .line 202
    invoke-direct {v0}, Landroid/os/UpdateEngineCallback;-><init>()V

    .line 203
    .line 204
    .line 205
    iput-object p0, v0, Lcom/android/server/devicepolicy/AbUpdateInstaller$DelegatingUpdateEngineCallback;->mUpdateInstaller:Lcom/android/server/devicepolicy/UpdateInstaller;

    .line 206
    .line 207
    iput-object v5, v0, Lcom/android/server/devicepolicy/AbUpdateInstaller$DelegatingUpdateEngineCallback;->mUpdateEngine:Landroid/os/UpdateEngine;

    .line 208
    .line 209
    invoke-virtual {v5, v0}, Landroid/os/UpdateEngine;->bind(Landroid/os/UpdateEngineCallback;)Z

    .line 210
    .line 211
    .line 212
    :try_start_2
    iget-wide v7, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mOffsetForUpdate:J

    .line 213
    .line 214
    iget-wide v9, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mSizeForUpdate:J

    .line 215
    .line 216
    move-object v6, p1

    .line 217
    invoke-virtual/range {v5 .. v11}, Landroid/os/UpdateEngine;->applyPayload(Ljava/lang/String;JJ[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 218
    .line 219
    .line 220
    goto :goto_5

    .line 221
    :catch_0
    move-exception p1

    .line 222
    const-string v0, "Failed to install update from file."

    .line 223
    .line 224
    invoke-static {v4, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    .line 226
    .line 227
    const/4 p1, 0x1

    .line 228
    invoke-virtual {p0, p1, v0}, Lcom/android/server/devicepolicy/UpdateInstaller;->notifyCallbackOnError(ILjava/lang/String;)V

    .line 229
    .line 230
    .line 231
    :goto_5
    return-void
.end method

.method public final installUpdateInThread()V
    .locals 3

    .line 1
    const-string v0, "UpdateInstaller"

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mUpdateInstalled:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/AbUpdateInstaller;->setState()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mCopiedUpdateFile:Ljava/io/File;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    new-array v2, v2, [Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v1}, Ljava/nio/file/Path;->toUri()Ljava/net/URI;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/AbUpdateInstaller;->applyPayload(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :catch_0
    move-exception v1

    .line 36
    goto :goto_0

    .line 37
    :catch_1
    move-exception v1

    .line 38
    goto :goto_1

    .line 39
    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p0, v0, v1}, Lcom/android/server/devicepolicy/UpdateInstaller;->notifyCallbackOnError(ILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :goto_1
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    const/4 v0, 0x3

    .line 55
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p0, v0, v1}, Lcom/android/server/devicepolicy/UpdateInstaller;->notifyCallbackOnError(ILjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :goto_2
    return-void

    .line 63
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 64
    .line 65
    const-string/jumbo v0, "installUpdateInThread can be called only once."

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p0
.end method

.method public final setState()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mUpdateInstalled:Z

    .line 3
    .line 4
    new-instance v0, Ljava/util/zip/ZipFile;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mCopiedUpdateFile:Ljava/io/File;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mPackedUpdateFile:Ljava/util/zip/ZipFile;

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mProperties:Ljava/util/List;

    .line 19
    .line 20
    const-wide/16 v0, -0x1

    .line 21
    .line 22
    iput-wide v0, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mSizeForUpdate:J

    .line 23
    .line 24
    const-wide/16 v0, 0x0

    .line 25
    .line 26
    iput-wide v0, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mOffsetForUpdate:J

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mPackedUpdateFile:Ljava/util/zip/ZipFile;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mEntries:Ljava/util/Enumeration;

    .line 35
    .line 36
    return-void
.end method
