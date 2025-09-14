.class public abstract Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mFile:Ljava/io/File;

.field public final resAtom:Lcom/android/server/devicepolicy/ReserveAtomicHelper;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->mFile:Ljava/io/File;

    .line 5
    .line 6
    new-instance v0, Lcom/android/server/devicepolicy/ReserveAtomicHelper;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/android/server/devicepolicy/ReserveAtomicHelper;-><init>(Ljava/io/File;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->resAtom:Lcom/android/server/devicepolicy/ReserveAtomicHelper;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final readFromFileLocked()V
    .locals 9

    .line 1
    const-string v0, "DevicePolicyManagerService"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->mFile:Ljava/io/File;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->resAtom:Lcom/android/server/devicepolicy/ReserveAtomicHelper;

    .line 13
    .line 14
    iget-object v2, v1, Lcom/android/server/devicepolicy/ReserveAtomicHelper;->orignalFile:Ljava/io/File;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    iget-boolean v2, v1, Lcom/android/server/devicepolicy/ReserveAtomicHelper;->failFlag:Z

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    new-instance v2, Landroid/util/AtomicFile;

    .line 27
    .line 28
    iget-object v3, v1, Lcom/android/server/devicepolicy/ReserveAtomicHelper;->orignalFile:Ljava/io/File;

    .line 29
    .line 30
    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string/jumbo v3, "orignal file failed moving to reserve, failflag status : "

    .line 37
    .line 38
    .line 39
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-boolean v3, v1, Lcom/android/server/devicepolicy/ReserveAtomicHelper;->failFlag:Z

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    iget-object v3, v1, Lcom/android/server/devicepolicy/ReserveAtomicHelper;->LOG_TAG:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    new-instance v2, Landroid/util/AtomicFile;

    .line 57
    .line 58
    iget-object v3, v1, Lcom/android/server/devicepolicy/ReserveAtomicHelper;->mReserveFile:Ljava/io/File;

    .line 59
    .line 60
    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    const/4 v3, 0x0

    .line 64
    const/4 v4, 0x1

    .line 65
    const/4 v5, 0x0

    .line 66
    :try_start_0
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-static {v5}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    move v6, v3

    .line 75
    :cond_2
    :goto_1
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    if-eq v7, v4, :cond_6

    .line 80
    .line 81
    const/4 v8, 0x2

    .line 82
    if-eq v7, v8, :cond_4

    .line 83
    .line 84
    const/4 v8, 0x3

    .line 85
    if-eq v7, v8, :cond_3

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    add-int/lit8 v6, v6, -0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 92
    .line 93
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    if-ne v6, v4, :cond_5

    .line 98
    .line 99
    const-string/jumbo v8, "root"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v8

    .line 106
    if-nez v8, :cond_2

    .line 107
    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string v6, "Invalid root tag: "

    .line 114
    .line 115
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .line 127
    .line 128
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :catchall_0
    move-exception p0

    .line 133
    goto :goto_6

    .line 134
    :catch_0
    move-exception v2

    .line 135
    goto :goto_3

    .line 136
    :cond_5
    :try_start_1
    invoke-virtual {p0, v2, v6, v7}, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->readInner(Lcom/android/modules/utils/TypedXmlPullParser;ILjava/lang/String;)Z

    .line 137
    .line 138
    .line 139
    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    if-nez v7, :cond_2

    .line 141
    .line 142
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :cond_6
    :goto_2
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 147
    .line 148
    .line 149
    goto :goto_5

    .line 150
    :goto_3
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string/jumbo v7, "setting failFlag previous status : "

    .line 153
    .line 154
    .line 155
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget-boolean v7, v1, Lcom/android/server/devicepolicy/ReserveAtomicHelper;->failFlag:Z

    .line 159
    .line 160
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    iget-object v7, v1, Lcom/android/server/devicepolicy/ReserveAtomicHelper;->LOG_TAG:Ljava/lang/String;

    .line 168
    .line 169
    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    iget-boolean v6, v1, Lcom/android/server/devicepolicy/ReserveAtomicHelper;->failFlag:Z

    .line 173
    .line 174
    if-eqz v6, :cond_7

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_7
    iput-boolean v4, v1, Lcom/android/server/devicepolicy/ReserveAtomicHelper;->failFlag:Z

    .line 178
    .line 179
    move v3, v4

    .line 180
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    const-string v4, "Error parsing owners information file, failread Status : "

    .line 186
    .line 187
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    .line 199
    .line 200
    if-eqz v3, :cond_6

    .line 201
    .line 202
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->readFromFileLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    .line 204
    .line 205
    goto :goto_2

    .line 206
    :goto_5
    return-void

    .line 207
    :goto_6
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 208
    .line 209
    .line 210
    throw p0
.end method

.method public abstract readInner(Lcom/android/modules/utils/TypedXmlPullParser;ILjava/lang/String;)Z
.end method

.method public abstract shouldWrite()Z
.end method

.method public abstract writeInner(Lcom/android/modules/utils/TypedXmlSerializer;)V
.end method

.method public final writeToFileLocked()Z
    .locals 8

    .line 1
    const-string/jumbo v0, "root"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->shouldWrite()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x1

    .line 9
    const-string v3, "DevicePolicyManagerService"

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->mFile:Ljava/io/File;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->mFile:Ljava/io/File;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v1, "Failed to remove "

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->mFile:Ljava/io/File;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    :cond_0
    return v2

    .line 53
    :cond_1
    new-instance v1, Landroid/util/AtomicFile;

    .line 54
    .line 55
    iget-object v4, p0, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->mFile:Ljava/io/File;

    .line 56
    .line 57
    invoke-direct {v1, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 58
    .line 59
    .line 60
    const/4 v4, 0x0

    .line 61
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 62
    .line 63
    .line 64
    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :try_start_1
    invoke-static {v5}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 70
    .line 71
    invoke-interface {v6, v4, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 72
    .line 73
    .line 74
    invoke-interface {v6, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v6}, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->writeInner(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 78
    .line 79
    .line 80
    invoke-interface {v6, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 81
    .line 82
    .line 83
    invoke-interface {v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 84
    .line 85
    .line 86
    invoke-interface {v6}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    .line 91
    .line 92
    :try_start_2
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->resAtom:Lcom/android/server/devicepolicy/ReserveAtomicHelper;

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/ReserveAtomicHelper;->writeReserve()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 95
    .line 96
    .line 97
    return v2

    .line 98
    :catch_0
    move-exception p0

    .line 99
    goto :goto_0

    .line 100
    :catch_1
    move-exception p0

    .line 101
    move-object v4, v5

    .line 102
    :goto_0
    const-string v0, "Exception when writing"

    .line 103
    .line 104
    invoke-static {v3, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    .line 106
    .line 107
    if-eqz v4, :cond_2

    .line 108
    .line 109
    invoke-virtual {v1, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 110
    .line 111
    .line 112
    :cond_2
    const/4 p0, 0x0

    .line 113
    return p0
.end method
