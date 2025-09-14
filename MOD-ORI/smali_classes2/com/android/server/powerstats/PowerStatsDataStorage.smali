.class public final Lcom/android/server/powerstats/PowerStatsDataStorage;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDataStorageDir:Ljava/io/File;

.field public final mDataStorageFilename:Ljava/lang/String;

.field public final mFileRotator:Lcom/android/internal/util/FileRotator;

.field public final mLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageDir:Ljava/io/File;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageFilename:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-nez p2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-nez p2, :cond_0

    .line 26
    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v0, "mDataStorageDir does not exist: "

    .line 30
    .line 31
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string p2, "PowerStatsDataStorage"

    .line 46
    .line 47
    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mFileRotator:Lcom/android/internal/util/FileRotator;

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const/4 p2, 0x0

    .line 59
    move v0, p2

    .line 60
    :goto_0
    array-length v1, p1

    .line 61
    if-ge v0, v1, :cond_2

    .line 62
    .line 63
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageFilename:Ljava/lang/String;

    .line 64
    .line 65
    const/16 v2, 0x2e

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageFilename:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v2, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    aget-object v2, p1, v0

    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_1

    .line 88
    .line 89
    aget-object v1, p1, v0

    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageFilename:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-nez v1, :cond_1

    .line 102
    .line 103
    aget-object v1, p1, v0

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 106
    .line 107
    .line 108
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_2
    new-instance p1, Lcom/android/internal/util/FileRotator;

    .line 112
    .line 113
    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageDir:Ljava/io/File;

    .line 114
    .line 115
    iget-object v3, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageFilename:Ljava/lang/String;

    .line 116
    .line 117
    const-wide/32 v4, 0xdbba00

    .line 118
    .line 119
    .line 120
    const-wide/32 v6, 0xa4cb800

    .line 121
    .line 122
    .line 123
    move-object v1, p1

    .line 124
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/util/FileRotator;-><init>(Ljava/io/File;Ljava/lang/String;JJ)V

    .line 125
    .line 126
    .line 127
    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mFileRotator:Lcom/android/internal/util/FileRotator;

    .line 128
    .line 129
    :goto_1
    return-void
.end method


# virtual methods
.method public final deleteLogs()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageFilename:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageDir:Ljava/io/File;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    :goto_0
    array-length v4, v1

    .line 17
    if-ge v3, v4, :cond_1

    .line 18
    .line 19
    const/16 v4, 0x2e

    .line 20
    .line 21
    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    aget-object v5, v1, v3

    .line 30
    .line 31
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    aget-object v4, v1, v3

    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    goto :goto_2

    .line 49
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :goto_2
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 61
    .line 62
    .line 63
    throw v0
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    iget-object v0, v1, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageFilename:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v1, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 10
    .line 11
    .line 12
    const/16 v3, 0x2e

    .line 13
    .line 14
    :try_start_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const/4 v5, 0x0

    .line 19
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    iget-object v0, v1, Lcom/android/server/powerstats/PowerStatsDataStorage;->mDataStorageDir:Ljava/io/File;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    move v0, v5

    .line 30
    move v9, v0

    .line 31
    const-wide v10, 0x7fffffffffffffffL

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    :goto_0
    array-length v12, v6

    .line 37
    if-ge v5, v12, :cond_2

    .line 38
    .line 39
    aget-object v12, v6, v5

    .line 40
    .line 41
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v13

    .line 45
    aget-object v14, v6, v5

    .line 46
    .line 47
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v14

    .line 51
    invoke-virtual {v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v14

    .line 55
    if-eqz v14, :cond_1

    .line 56
    .line 57
    add-int/lit8 v14, v0, 0x1

    .line 58
    .line 59
    int-to-long v7, v9

    .line 60
    invoke-virtual {v12}, Ljava/io/File;->length()J

    .line 61
    .line 62
    .line 63
    move-result-wide v15

    .line 64
    add-long/2addr v7, v15

    .line 65
    long-to-int v7, v7

    .line 66
    invoke-virtual {v13, v3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    .line 71
    .line 72
    const/16 v8, 0x2d

    .line 73
    .line 74
    invoke-virtual {v13, v8}, Ljava/lang/String;->lastIndexOf(I)I

    .line 75
    .line 76
    .line 77
    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :try_start_1
    invoke-virtual {v13, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 83
    .line 84
    .line 85
    move-result-wide v8
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    cmp-long v0, v8, v10

    .line 87
    .line 88
    if-gez v0, :cond_0

    .line 89
    .line 90
    move-wide v10, v8

    .line 91
    :cond_0
    :goto_1
    move v9, v7

    .line 92
    move v0, v14

    .line 93
    goto :goto_2

    .line 94
    :catchall_0
    move-exception v0

    .line 95
    goto :goto_4

    .line 96
    :catch_0
    move-exception v0

    .line 97
    :try_start_2
    const-string v8, "PowerStatsDataStorage"

    .line 98
    .line 99
    new-instance v9, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v12, "Failed to extract start time from file : "

    .line 105
    .line 106
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_2
    const-wide v3, 0x7fffffffffffffffL

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    cmp-long v3, v10, v3

    .line 129
    .line 130
    if-eqz v3, :cond_3

    .line 131
    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    const-string v4, "Earliest data time : "

    .line 138
    .line 139
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    new-instance v4, Ljava/util/Date;

    .line 143
    .line 144
    invoke-direct {v4, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v2, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_3
    const-string v3, "Failed to parse earliest data time!!!"

    .line 159
    .line 160
    invoke-virtual {v2, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    const-string v4, "# files : "

    .line 169
    .line 170
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    const-string v3, "Total data size (B) : "

    .line 189
    .line 190
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {v2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    .line 202
    .line 203
    iget-object v0, v1, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 206
    .line 207
    .line 208
    return-void

    .line 209
    :goto_4
    iget-object v1, v1, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 210
    .line 211
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 212
    .line 213
    .line 214
    throw v0
.end method

.method public final read(Lcom/android/server/powerstats/PowerStatsLogger$1;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mFileRotator:Lcom/android/internal/util/FileRotator;

    .line 7
    .line 8
    new-instance v2, Lcom/android/server/powerstats/PowerStatsDataStorage$DataReader;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, v2, Lcom/android/server/powerstats/PowerStatsDataStorage$DataReader;->mCallback:Lcom/android/server/powerstats/PowerStatsLogger$1;

    .line 14
    .line 15
    const-wide/high16 v3, -0x8000000000000000L

    .line 16
    .line 17
    const-wide v5, 0x7fffffffffffffffL

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/util/FileRotator;->readMatching(Lcom/android/internal/util/FileRotator$Reader;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method public final write([B)V
    .locals 6

    .line 1
    const-string v0, "Failed to write to on-device storage: "

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    array-length v1, p1

    .line 6
    if-lez v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    new-instance v3, Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;

    .line 18
    .line 19
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, v3, Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;->mData:[B

    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mFileRotator:Lcom/android/internal/util/FileRotator;

    .line 25
    .line 26
    new-instance v4, Lcom/android/server/powerstats/PowerStatsDataStorage$DataRewriter;

    .line 27
    .line 28
    invoke-static {v3}, Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;->-$$Nest$mtoByteArray(Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;)[B

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    new-array v5, v5, [B

    .line 37
    .line 38
    iput-object v5, v4, Lcom/android/server/powerstats/PowerStatsDataStorage$DataRewriter;->mActiveFileData:[B

    .line 39
    .line 40
    iput-object v3, v4, Lcom/android/server/powerstats/PowerStatsDataStorage$DataRewriter;->mNewData:[B

    .line 41
    .line 42
    invoke-virtual {p1, v4, v1, v2}, Lcom/android/internal/util/FileRotator;->rewriteActive(Lcom/android/internal/util/FileRotator$Rewriter;J)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mFileRotator:Lcom/android/internal/util/FileRotator;

    .line 46
    .line 47
    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/FileRotator;->maybeRotate(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    :goto_0
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    goto :goto_1

    .line 58
    :catch_0
    move-exception p1

    .line 59
    :try_start_1
    const-string v1, "PowerStatsDataStorage"

    .line 60
    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :goto_1
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 80
    .line 81
    .line 82
    throw p1

    .line 83
    :cond_0
    :goto_2
    return-void
.end method
