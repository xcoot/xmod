.class public final Lcom/android/server/am/pds/PDSHistoryLog;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mLogFileIndex:I

.field public mPDSHistoryBuffer:Lcom/android/server/am/pds/PDSHistoryBuffer;


# direct methods
.method public static readLogFromFile(Ljava/io/File;Ljava/util/ArrayList;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    .line 3
    new-instance v1, Ljava/io/InputStreamReader;

    .line 5
    new-instance v2, Ljava/io/FileInputStream;

    .line 7
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 14
    const-string p0, "UTF-8"

    .line 16
    invoke-direct {v1, v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 19
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string p0, "\n"

    .line 38
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 54
    goto :goto_4

    .line 55
    :catch_0
    move-exception p0

    .line 56
    goto :goto_3

    .line 57
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 60
    goto :goto_2

    .line 61
    :catchall_1
    move-exception p1

    .line 62
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 65
    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 66
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    :goto_4
    return-void
.end method

.method public static recreateLogFile(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 4
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 13
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    const-string v2, "PDSController"

    .line 16
    if-eqz p0, :cond_0

    .line 18
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 21
    move-result p0

    .line 22
    if-nez p0, :cond_0

    .line 24
    const-string p0, "File is not deleted."

    .line 26
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 35
    move-result p0

    .line 36
    if-nez p0, :cond_1

    .line 38
    const-string p0, "File is not created."

    .line 40
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    return v0

    .line 44
    :cond_1
    const/4 p0, 0x1

    .line 45
    return p0

    .line 46
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    return v0
.end method


# virtual methods
.method public final declared-synchronized getLog()Ljava/util/ArrayList;
    .locals 6

    .line 1
    const-string v0, "/data/log/pds/pds"

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    iget v0, p0, Lcom/android/server/am/pds/PDSHistoryLog;->mLogFileIndex:I

    .line 16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    const-string v0, ".log"

    .line 21
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/android/server/am/pds/PDSHistoryLog;->recreateLogFile(Ljava/lang/String;)Z

    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 34
    const-string v0, "PDSController"

    .line 36
    const-string/jumbo v1, "recreate Failed\n"

    .line 39
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    .line 43
    const/4 p0, 0x0

    .line 44
    return-object p0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    goto :goto_2

    .line 47
    :cond_0
    const/4 v0, 0x0

    .line 48
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/am/pds/PDSHistoryLog;->saveLogToFile(Z)V

    .line 51
    iget v2, p0, Lcom/android/server/am/pds/PDSHistoryLog;->mLogFileIndex:I

    .line 53
    :cond_1
    :goto_0
    add-int/lit8 v2, v2, 0x1

    .line 55
    const/16 v3, 0xa

    .line 57
    if-ge v2, v3, :cond_2

    .line 59
    new-instance v3, Ljava/io/File;

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    const-string v5, "/data/log/pds/pds"

    .line 68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    const-string v5, ".log"

    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v4

    .line 83
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 89
    move-result v4

    .line 90
    if-eqz v4, :cond_1

    .line 92
    invoke-static {v3, v1}, Lcom/android/server/am/pds/PDSHistoryLog;->readLogFromFile(Ljava/io/File;Ljava/util/ArrayList;)V

    .line 95
    goto :goto_0

    .line 96
    :cond_2
    :goto_1
    iget v2, p0, Lcom/android/server/am/pds/PDSHistoryLog;->mLogFileIndex:I

    .line 98
    if-gt v0, v2, :cond_4

    .line 100
    new-instance v2, Ljava/io/File;

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    .line 104
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    const-string v4, "/data/log/pds/pds"

    .line 109
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    const-string v4, ".log"

    .line 117
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object v3

    .line 124
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 130
    move-result v3

    .line 131
    if-eqz v3, :cond_3

    .line 133
    invoke-static {v2, v1}, Lcom/android/server/am/pds/PDSHistoryLog;->readLogFromFile(Ljava/io/File;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 138
    goto :goto_1

    .line 139
    :cond_4
    monitor-exit p0

    .line 140
    return-object v1

    .line 141
    :goto_2
    monitor-exit p0

    .line 142
    throw v0
.end method

.method public final declared-synchronized saveLogToFile(Z)V
    .locals 3

    .line 1
    const-string v0, "/data/log/pds/pds"

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget v0, p0, Lcom/android/server/am/pds/PDSHistoryLog;->mLogFileIndex:I

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string v0, ".log"

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/android/server/am/pds/PDSHistoryLog;->recreateLogFile(Ljava/lang/String;)Z

    .line 26
    new-instance v1, Ljava/io/File;

    .line 28
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    if-eqz p1, :cond_0

    .line 33
    iget p1, p0, Lcom/android/server/am/pds/PDSHistoryLog;->mLogFileIndex:I

    .line 35
    add-int/lit8 p1, p1, 0x1

    .line 37
    rem-int/lit8 p1, p1, 0xa

    .line 39
    iput p1, p0, Lcom/android/server/am/pds/PDSHistoryLog;->mLogFileIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_6

    .line 44
    :cond_0
    :goto_0
    :try_start_1
    new-instance p1, Ljava/io/BufferedWriter;

    .line 46
    new-instance v0, Ljava/io/OutputStreamWriter;

    .line 48
    new-instance v2, Ljava/io/FileOutputStream;

    .line 50
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 57
    const-string v1, "UTF-8"

    .line 59
    invoke-direct {v0, v2, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 62
    invoke-direct {p1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :try_start_2
    iget-object v0, p0, Lcom/android/server/am/pds/PDSHistoryLog;->mPDSHistoryBuffer:Lcom/android/server/am/pds/PDSHistoryBuffer;

    .line 67
    iget v0, v0, Lcom/android/server/am/pds/PDSHistoryBuffer;->pointer:I

    .line 69
    const/4 v1, 0x0

    .line 70
    :goto_1
    if-ge v1, v0, :cond_1

    .line 72
    iget-object v2, p0, Lcom/android/server/am/pds/PDSHistoryLog;->mPDSHistoryBuffer:Lcom/android/server/am/pds/PDSHistoryBuffer;

    .line 74
    iget-object v2, v2, Lcom/android/server/am/pds/PDSHistoryBuffer;->buffer:[Ljava/lang/String;

    .line 76
    aget-object v2, v2, v1

    .line 78
    invoke-virtual {p1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 81
    add-int/lit8 v1, v1, 0x1

    .line 83
    goto :goto_1

    .line 84
    :catchall_1
    move-exception v0

    .line 85
    goto :goto_2

    .line 86
    :cond_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    goto :goto_5

    .line 90
    :catch_0
    move-exception p1

    .line 91
    goto :goto_4

    .line 92
    :goto_2
    :try_start_4
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 95
    goto :goto_3

    .line 96
    :catchall_2
    move-exception p1

    .line 97
    :try_start_5
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 100
    :goto_3
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 101
    :goto_4
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 104
    :goto_5
    monitor-exit p0

    .line 105
    return-void

    .line 106
    :goto_6
    monitor-exit p0

    .line 107
    throw p1
.end method
