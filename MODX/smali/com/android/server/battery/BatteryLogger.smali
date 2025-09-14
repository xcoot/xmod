.class public abstract Lcom/android/server/battery/BatteryLogger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final FORMATTER:Ljava/time/format/DateTimeFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 4
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/android/server/battery/BatteryLogger;->FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 10
    return-void
.end method

.method public static getFilePathWithSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/String;

    .line 4
    invoke-static {p0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 7
    move-result-object v1

    .line 8
    invoke-interface {v1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    .line 11
    move-result-object v2

    .line 12
    invoke-interface {v1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    const/16 v3, 0x2e

    .line 22
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 25
    move-result v3

    .line 26
    const/4 v4, -0x1

    .line 27
    const-string v5, "_1"

    .line 29
    if-eq v3, v4, :cond_0

    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    :goto_0
    if-eqz v2, :cond_1

    .line 64
    invoke-interface {v2, v0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    .line 67
    move-result-object v0

    .line 68
    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    const-string v2, "[getFilePathWithSuffix]filePath:"

    .line 76
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string p0, "=> newFilePath:"

    .line 84
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object p0

    .line 94
    const-string v1, "[SS]BatteryLogger"

    .line 96
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-object v0
.end method

.method public static renameForBackupIfExeedsSize(Ljava/lang/String;)V
    .locals 10

    .line 1
    const-string v0, "[renameForBackupIfExeedsSize]File Renamed:"

    .line 3
    const-string v1, "[renameForBackupIfExeedsSize]fileSizeInBytes:"

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    const-string v3, "[renameForBackupIfExeedsSize]filePath:"

    .line 9
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v3, " ,suffix:_1 ,thresholdSizeMb:2"

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    const-string v3, "[SS]BatteryLogger"

    .line 26
    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {p0}, Lcom/android/server/battery/BattUtils;->isExist(Ljava/lang/String;)Z

    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_0

    .line 35
    const-string v0, "[renameForBackupIfExeedsSize]Not Exist - filePath:"

    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 41
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void

    .line 45
    :cond_0
    const/4 v2, 0x0

    .line 46
    :try_start_0
    new-array v4, v2, [Ljava/lang/String;

    .line 48
    invoke-static {p0, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 51
    move-result-object v4

    .line 52
    invoke-static {v4}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    .line 55
    move-result-wide v5

    .line 56
    const-wide/32 v7, 0x100000

    .line 59
    div-long v7, v5, v7

    .line 61
    new-instance v9, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, " ,fileSizeInMb:"

    .line 71
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v1

    .line 81
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v1, 0x2

    .line 85
    int-to-long v5, v1

    .line 86
    cmp-long v5, v7, v5

    .line 88
    if-ltz v5, :cond_1

    .line 90
    invoke-static {p0}, Lcom/android/server/battery/BatteryLogger;->getFilePathWithSuffix(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    move-result-object p0

    .line 94
    new-array v5, v2, [Ljava/lang/String;

    .line 96
    invoke-static {p0, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 99
    move-result-object p0

    .line 100
    new-array v1, v1, [Ljava/nio/file/CopyOption;

    .line 102
    sget-object v5, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    .line 104
    aput-object v5, v1, v2

    .line 106
    sget-object v2, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    .line 108
    const/4 v5, 0x1

    .line 109
    aput-object v2, v1, v5

    .line 111
    invoke-static {v4, p0, v1}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    .line 116
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object p0

    .line 126
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    goto :goto_0

    .line 130
    :catch_0
    move-exception p0

    .line 131
    const-string v0, "[renameForBackupIfExeedsSize]Exception"

    .line 133
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    :cond_1
    :goto_0
    return-void
.end method

.method public static writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "# "

    .line 3
    const-string v1, "@ "

    .line 5
    const-string v2, "[writeToFile]create file: "

    .line 7
    const-string v3, "[writeToFile]path:"

    .line 9
    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v3

    .line 13
    const-string v4, "[SS]BatteryLogger"

    .line 15
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    new-instance v3, Ljava/io/File;

    .line 20
    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 26
    move-result v5

    .line 27
    if-nez v5, :cond_1

    .line 29
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 36
    move-result v5

    .line 37
    if-nez v5, :cond_0

    .line 39
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 52
    move-result v5

    .line 53
    new-instance v6, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string p0, " ,result:"

    .line 63
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 73
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    if-nez v5, :cond_1

    .line 78
    return-void

    .line 79
    :goto_1
    const-string v2, "[writeToFile]Exception - createNewFile"

    .line 81
    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    :cond_1
    :try_start_1
    new-instance p0, Ljava/io/FileWriter;

    .line 89
    const/4 v2, 0x1

    .line 90
    invoke-direct {p0, v3, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    :try_start_2
    new-instance v2, Ljava/io/BufferedWriter;

    .line 95
    invoke-direct {v2, p0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 98
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 100
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    .line 106
    move-result-object v1

    .line 107
    sget-object v5, Lcom/android/server/battery/BatteryLogger;->FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 109
    invoke-virtual {v1, v5}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 126
    if-eqz p1, :cond_2

    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 131
    move-result v1

    .line 132
    if-nez v1, :cond_2

    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {v2, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 144
    goto :goto_2

    .line 145
    :catchall_0
    move-exception p1

    .line 146
    goto :goto_3

    .line 147
    :cond_2
    :goto_2
    if-eqz p2, :cond_3

    .line 149
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 152
    move-result p1

    .line 153
    if-nez p1, :cond_3

    .line 155
    invoke-virtual {v2, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 161
    :cond_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 164
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 167
    :try_start_5
    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 170
    goto :goto_8

    .line 171
    :catch_1
    move-exception p0

    .line 172
    goto :goto_7

    .line 173
    :catchall_1
    move-exception p1

    .line 174
    goto :goto_5

    .line 175
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 178
    goto :goto_4

    .line 179
    :catchall_2
    move-exception p2

    .line 180
    :try_start_7
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 183
    :goto_4
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 184
    :goto_5
    :try_start_8
    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 187
    goto :goto_6

    .line 188
    :catchall_3
    move-exception p0

    .line 189
    :try_start_9
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 192
    :goto_6
    throw p1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 193
    :goto_7
    const-string p1, "[writeToFile]Exception"

    .line 195
    invoke-static {v4, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 201
    :goto_8
    return-void
.end method
