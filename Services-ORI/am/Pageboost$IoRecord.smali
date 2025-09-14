.class public final Lcom/android/server/am/Pageboost$IoRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public is64bit:Z

.field public mApp:Lcom/android/server/am/Pageboost$PageboostAppInfo;

.field public mBytesRecorded:J

.field public mCorrectness:Z

.field public mPid:I

.field public mRecordDone:Z


# direct methods
.method public static fillBitmap(II[BZ)V
    .locals 6

    .line 1
    rem-int/lit8 v0, p0, 0x8

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/16 v2, 0xff

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    div-int/lit8 p0, p0, 0x8

    .line 11
    .line 12
    aget-byte v4, p2, p0

    .line 13
    .line 14
    and-int/2addr v4, v2

    .line 15
    :goto_0
    if-ge v0, v1, :cond_1

    .line 16
    .line 17
    if-eqz p3, :cond_0

    .line 18
    .line 19
    shl-int v5, v3, v0

    .line 20
    .line 21
    or-int/2addr v4, v5

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    shl-int v5, v3, v0

    .line 24
    .line 25
    not-int v5, v5

    .line 26
    and-int/2addr v4, v5

    .line 27
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    and-int/lit16 v0, v4, 0xff

    .line 31
    .line 32
    int-to-byte v0, v0

    .line 33
    aput-byte v0, p2, p0

    .line 34
    .line 35
    add-int/2addr p0, v3

    .line 36
    mul-int/2addr p0, v1

    .line 37
    :cond_2
    div-int/2addr p0, v1

    .line 38
    div-int/lit8 v0, p1, 0x8

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    if-ge p0, v0, :cond_4

    .line 42
    .line 43
    if-eqz p3, :cond_3

    .line 44
    .line 45
    move v5, v2

    .line 46
    goto :goto_2

    .line 47
    :cond_3
    move v5, v4

    .line 48
    :goto_2
    int-to-byte v5, v5

    .line 49
    invoke-static {p2, p0, v0, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 50
    .line 51
    .line 52
    :cond_4
    rem-int/2addr p1, v1

    .line 53
    if-eqz p1, :cond_7

    .line 54
    .line 55
    aget-byte p0, p2, v0

    .line 56
    .line 57
    and-int/2addr p0, v2

    .line 58
    :goto_3
    if-ge v4, p1, :cond_6

    .line 59
    .line 60
    if-eqz p3, :cond_5

    .line 61
    .line 62
    shl-int v1, v3, v4

    .line 63
    .line 64
    or-int/2addr p0, v1

    .line 65
    goto :goto_4

    .line 66
    :cond_5
    shl-int v1, v3, v4

    .line 67
    .line 68
    not-int v1, v1

    .line 69
    and-int/2addr p0, v1

    .line 70
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_6
    and-int/2addr p0, v2

    .line 74
    int-to-byte p0, p0

    .line 75
    aput-byte p0, p2, v0

    .line 76
    .line 77
    :cond_7
    return-void
.end method

.method public static readInt([B)I
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    aget-byte v0, p0, v0

    .line 3
    .line 4
    shl-int/lit8 v0, v0, 0x18

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    aget-byte v1, p0, v1

    .line 8
    .line 9
    and-int/lit16 v1, v1, 0xff

    .line 10
    .line 11
    shl-int/lit8 v1, v1, 0x10

    .line 12
    .line 13
    or-int/2addr v0, v1

    .line 14
    const/4 v1, 0x1

    .line 15
    aget-byte v1, p0, v1

    .line 16
    .line 17
    and-int/lit16 v1, v1, 0xff

    .line 18
    .line 19
    shl-int/lit8 v1, v1, 0x8

    .line 20
    .line 21
    or-int/2addr v0, v1

    .line 22
    const/4 v1, 0x0

    .line 23
    aget-byte p0, p0, v1

    .line 24
    .line 25
    and-int/lit16 p0, p0, 0xff

    .line 26
    .line 27
    or-int/2addr p0, v0

    .line 28
    return p0
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    .line 2
    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    .line 16
    .line 17
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_1
    move-exception p1

    .line 30
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 34
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    return p0
.end method


# virtual methods
.method public final getResultFromKernel()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/server/am/Pageboost$IoRecord;->mCorrectness:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "IoRecord pid : "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget v2, p0, Lcom/android/server/am/Pageboost$IoRecord;->mPid:I

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v3, "Pageboost"

    .line 25
    .line 26
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v4, "/proc/"

    .line 32
    .line 33
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v4, "/io_record_control"

    .line 40
    .line 41
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v4, "3"

    .line 49
    .line 50
    invoke-static {v0, v4}, Lcom/android/server/am/Pageboost$IoRecord;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-nez v4, :cond_1

    .line 55
    .line 56
    const-string p0, "StopRecording Failed"

    .line 57
    .line 58
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_1
    const-string v4, "4"

    .line 63
    .line 64
    invoke-static {v0, v4}, Lcom/android/server/am/Pageboost$IoRecord;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-nez v4, :cond_2

    .line 69
    .line 70
    const-string p0, "PostRecording Failed"

    .line 71
    .line 72
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_2
    const/4 v4, 0x0

    .line 77
    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v0, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-static {v4}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    new-instance v5, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v1, ", result_size : "

    .line 96
    .line 97
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    array-length v1, v4

    .line 101
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v4}, Lcom/android/server/am/Pageboost$IoRecord;->parsingResult([B)J

    .line 112
    .line 113
    .line 114
    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    const-string v4, "1"

    .line 116
    .line 117
    invoke-static {v0, v4}, Lcom/android/server/am/Pageboost$IoRecord;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-nez v0, :cond_3

    .line 122
    .line 123
    const-string/jumbo p0, "iorecord re-init Failed"

    .line 124
    .line 125
    .line 126
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_3
    const-wide/16 v3, 0x0

    .line 131
    .line 132
    cmp-long v0, v1, v3

    .line 133
    .line 134
    if-ltz v0, :cond_4

    .line 135
    .line 136
    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/android/server/am/Pageboost$IoRecord;->mRecordDone:Z

    .line 138
    .line 139
    :cond_4
    return-void

    .line 140
    :catch_0
    sget-boolean p0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 141
    .line 142
    const-string p0, "CatRecordedData Failed"

    .line 143
    .line 144
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method public final parsingResult([B)J
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/android/server/am/Pageboost$IoRecord;->mCorrectness:Z

    .line 6
    .line 7
    const-wide/16 v3, -0x1

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-wide v3

    .line 12
    :cond_0
    sget-object v2, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 13
    .line 14
    iget-object v5, v0, Lcom/android/server/am/Pageboost$IoRecord;->mApp:Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 15
    .line 16
    iget-object v6, v5, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v2, v6}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v2, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 22
    .line 23
    iget-object v6, v5, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v2, v6}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string v6, "Pageboost"

    .line 30
    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    const-string/jumbo v0, "db table failed"

    .line 34
    .line 35
    .line 36
    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-wide v3

    .line 40
    :cond_1
    invoke-virtual {v5}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->initAalPrefetchList()V

    .line 41
    .line 42
    .line 43
    const-string/jumbo v3, "db insert start"

    .line 44
    .line 45
    .line 46
    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    const-wide/16 v7, 0x0

    .line 50
    .line 51
    const/4 v4, 0x0

    .line 52
    const/4 v14, 0x0

    .line 53
    :goto_0
    array-length v9, v1

    .line 54
    if-ge v4, v9, :cond_2

    .line 55
    .line 56
    add-int/lit8 v9, v4, 0x4

    .line 57
    .line 58
    invoke-static {v1, v4, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-static {v4}, Lcom/android/server/am/Pageboost$IoRecord;->readInt([B)I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    const/4 v15, -0x1

    .line 67
    if-ne v4, v15, :cond_3

    .line 68
    .line 69
    :cond_2
    move v3, v14

    .line 70
    goto/16 :goto_9

    .line 71
    .line 72
    :cond_3
    add-int v10, v9, v4

    .line 73
    .line 74
    invoke-static {v1, v9, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    new-instance v13, Ljava/lang/String;

    .line 79
    .line 80
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 81
    .line 82
    invoke-direct {v13, v9, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 83
    .line 84
    .line 85
    iget-object v9, v5, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    .line 86
    .line 87
    const/16 v16, 0x0

    .line 88
    .line 89
    if-eqz v9, :cond_4

    .line 90
    .line 91
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    if-eqz v9, :cond_4

    .line 96
    .line 97
    const/4 v9, 0x2

    .line 98
    move-wide/from16 v17, v7

    .line 99
    .line 100
    move/from16 v19, v9

    .line 101
    .line 102
    move v7, v15

    .line 103
    move v11, v7

    .line 104
    move-object/from16 v12, v16

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_4
    move-wide/from16 v17, v7

    .line 108
    .line 109
    move v7, v15

    .line 110
    move v11, v7

    .line 111
    move-object/from16 v12, v16

    .line 112
    .line 113
    const/16 v19, 0x0

    .line 114
    .line 115
    :goto_1
    add-int/lit8 v8, v10, 0x4

    .line 116
    .line 117
    invoke-static {v1, v10, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    invoke-static {v9}, Lcom/android/server/am/Pageboost$IoRecord;->readInt([B)I

    .line 122
    .line 123
    .line 124
    move-result v9

    .line 125
    add-int/lit8 v10, v10, 0x8

    .line 126
    .line 127
    invoke-static {v1, v8, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    invoke-static {v8}, Lcom/android/server/am/Pageboost$IoRecord;->readInt([B)I

    .line 132
    .line 133
    .line 134
    move-result v8

    .line 135
    if-ne v9, v15, :cond_5

    .line 136
    .line 137
    if-ne v8, v15, :cond_5

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_5
    invoke-static {v13}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->isCaptureTarget(Ljava/lang/String;)Z

    .line 141
    .line 142
    .line 143
    move-result v20

    .line 144
    if-eqz v20, :cond_e

    .line 145
    .line 146
    iget-boolean v15, v0, Lcom/android/server/am/Pageboost$IoRecord;->is64bit:Z

    .line 147
    .line 148
    if-eqz v15, :cond_6

    .line 149
    .line 150
    sget-object v3, Lcom/android/server/am/Pageboost;->mZygote64FileMap:Lcom/android/server/am/Pageboost$FileMapList;

    .line 151
    .line 152
    invoke-virtual {v3, v13}, Lcom/android/server/am/Pageboost$FileMapList;->contain(Ljava/lang/String;)Z

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    if-nez v3, :cond_6

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_6
    if-nez v15, :cond_e

    .line 160
    .line 161
    sget-object v3, Lcom/android/server/am/Pageboost;->mZygoteFileMap:Lcom/android/server/am/Pageboost$FileMapList;

    .line 162
    .line 163
    invoke-virtual {v3, v13}, Lcom/android/server/am/Pageboost$FileMapList;->contain(Ljava/lang/String;)Z

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    if-nez v3, :cond_e

    .line 168
    .line 169
    :goto_2
    const-wide/16 v21, 0x1000

    .line 170
    .line 171
    move v3, v14

    .line 172
    int-to-long v14, v8

    .line 173
    mul-long v14, v14, v21

    .line 174
    .line 175
    add-long v14, v14, v17

    .line 176
    .line 177
    const-wide/32 v21, 0x19000000

    .line 178
    .line 179
    .line 180
    cmp-long v21, v14, v21

    .line 181
    .line 182
    if-lez v21, :cond_9

    .line 183
    .line 184
    const/4 v14, 0x1

    .line 185
    :goto_3
    if-eqz v12, :cond_7

    .line 186
    .line 187
    sget-object v7, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 188
    .line 189
    array-length v1, v12

    .line 190
    move-object v8, v2

    .line 191
    move-object v9, v13

    .line 192
    move/from16 v21, v10

    .line 193
    .line 194
    move v10, v11

    .line 195
    move-object v11, v12

    .line 196
    move v12, v1

    .line 197
    move/from16 v13, v19

    .line 198
    .line 199
    invoke-static/range {v7 .. v13}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->insertTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I[BII)V

    .line 200
    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_7
    move/from16 v21, v10

    .line 204
    .line 205
    :goto_4
    if-eqz v14, :cond_8

    .line 206
    .line 207
    move-wide/from16 v7, v17

    .line 208
    .line 209
    goto/16 :goto_a

    .line 210
    .line 211
    :cond_8
    move-object/from16 v1, p1

    .line 212
    .line 213
    move-wide/from16 v7, v17

    .line 214
    .line 215
    move/from16 v4, v21

    .line 216
    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    :cond_9
    move/from16 v21, v10

    .line 220
    .line 221
    if-eqz v12, :cond_a

    .line 222
    .line 223
    add-int v10, v11, v7

    .line 224
    .line 225
    sub-int v10, v9, v10

    .line 226
    .line 227
    add-int/lit8 v10, v10, 0x7

    .line 228
    .line 229
    div-int/lit8 v10, v10, 0x8

    .line 230
    .line 231
    move-object/from16 v22, v2

    .line 232
    .line 233
    int-to-long v1, v10

    .line 234
    move-wide/from16 v23, v14

    .line 235
    .line 236
    int-to-long v14, v4

    .line 237
    cmp-long v1, v1, v14

    .line 238
    .line 239
    if-gtz v1, :cond_b

    .line 240
    .line 241
    add-int v1, v9, v8

    .line 242
    .line 243
    sub-int/2addr v1, v11

    .line 244
    add-int/lit8 v2, v1, 0x7

    .line 245
    .line 246
    div-int/lit8 v2, v2, 0x8

    .line 247
    .line 248
    new-array v2, v2, [B

    .line 249
    .line 250
    array-length v10, v12

    .line 251
    const/4 v14, 0x0

    .line 252
    invoke-static {v12, v14, v2, v14, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 253
    .line 254
    .line 255
    sub-int v10, v9, v11

    .line 256
    .line 257
    invoke-static {v7, v10, v2, v14}, Lcom/android/server/am/Pageboost$IoRecord;->fillBitmap(II[BZ)V

    .line 258
    .line 259
    .line 260
    const/4 v7, 0x1

    .line 261
    invoke-static {v10, v1, v2, v7}, Lcom/android/server/am/Pageboost$IoRecord;->fillBitmap(II[BZ)V

    .line 262
    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_a
    move-object/from16 v22, v2

    .line 266
    .line 267
    move-wide/from16 v23, v14

    .line 268
    .line 269
    :cond_b
    move-object/from16 v2, v16

    .line 270
    .line 271
    :goto_5
    if-nez v2, :cond_d

    .line 272
    .line 273
    if-eqz v12, :cond_c

    .line 274
    .line 275
    sget-object v7, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 276
    .line 277
    array-length v1, v12

    .line 278
    move v14, v8

    .line 279
    move-object/from16 v8, v22

    .line 280
    .line 281
    move v15, v9

    .line 282
    move-object v9, v13

    .line 283
    move v10, v11

    .line 284
    move-object v11, v12

    .line 285
    move v12, v1

    .line 286
    move-object v1, v13

    .line 287
    move/from16 v13, v19

    .line 288
    .line 289
    invoke-static/range {v7 .. v13}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->insertTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I[BII)V

    .line 290
    .line 291
    .line 292
    goto :goto_6

    .line 293
    :cond_c
    move v14, v8

    .line 294
    move v15, v9

    .line 295
    move-object v1, v13

    .line 296
    :goto_6
    add-int/lit8 v8, v14, 0x7

    .line 297
    .line 298
    div-int/lit8 v8, v8, 0x8

    .line 299
    .line 300
    new-array v2, v8, [B

    .line 301
    .line 302
    const/4 v7, 0x1

    .line 303
    const/4 v9, 0x0

    .line 304
    invoke-static {v9, v14, v2, v7}, Lcom/android/server/am/Pageboost$IoRecord;->fillBitmap(II[BZ)V

    .line 305
    .line 306
    .line 307
    move-object v12, v2

    .line 308
    move v7, v14

    .line 309
    move v11, v15

    .line 310
    goto :goto_7

    .line 311
    :cond_d
    move v14, v8

    .line 312
    move v15, v9

    .line 313
    move-object v1, v13

    .line 314
    const/4 v9, 0x0

    .line 315
    add-int v7, v15, v14

    .line 316
    .line 317
    sub-int/2addr v7, v11

    .line 318
    move-object v12, v2

    .line 319
    :goto_7
    move-object v13, v1

    .line 320
    move v14, v3

    .line 321
    move/from16 v10, v21

    .line 322
    .line 323
    move-object/from16 v2, v22

    .line 324
    .line 325
    move-wide/from16 v17, v23

    .line 326
    .line 327
    :goto_8
    const/4 v15, -0x1

    .line 328
    move-object/from16 v1, p1

    .line 329
    .line 330
    goto/16 :goto_1

    .line 331
    .line 332
    :cond_e
    move-object/from16 v22, v2

    .line 333
    .line 334
    move/from16 v21, v10

    .line 335
    .line 336
    move-object v1, v13

    .line 337
    move v3, v14

    .line 338
    const/4 v9, 0x0

    .line 339
    move-object v13, v1

    .line 340
    move v14, v3

    .line 341
    move/from16 v10, v21

    .line 342
    .line 343
    move-object/from16 v2, v22

    .line 344
    .line 345
    goto :goto_8

    .line 346
    :goto_9
    move v14, v3

    .line 347
    :goto_a
    sget-boolean v1, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 348
    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    .line 350
    .line 351
    const-string/jumbo v2, "db insert done, overLimit "

    .line 352
    .line 353
    .line 354
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    invoke-static {v6, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    .line 366
    .line 367
    iput-wide v7, v0, Lcom/android/server/am/Pageboost$IoRecord;->mBytesRecorded:J

    .line 368
    .line 369
    return-wide v7
.end method
