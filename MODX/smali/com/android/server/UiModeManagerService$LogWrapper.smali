.class public abstract Lcom/android/server/UiModeManagerService$LogWrapper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final date:Ljava/util/Date;

.field public static final formatter:Landroid/icu/text/SimpleDateFormat;

.field public static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    .line 3
    const-string v1, "MM-dd HH:mm:ss.SSS: "

    .line 5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v0, v1, v2}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 12
    sput-object v0, Lcom/android/server/UiModeManagerService$LogWrapper;->formatter:Landroid/icu/text/SimpleDateFormat;

    .line 14
    new-instance v0, Ljava/util/Date;

    .line 16
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 19
    sput-object v0, Lcom/android/server/UiModeManagerService$LogWrapper;->date:Ljava/util/Date;

    .line 21
    :try_start_0
    new-instance v0, Ljava/util/logging/FileHandler;

    .line 23
    const-string v1, "/data/log/dark_mode_log%g.txt"

    .line 25
    const/4 v2, 0x1

    .line 26
    const/16 v3, 0x1400

    .line 28
    const/4 v4, 0x2

    .line 29
    invoke-direct {v0, v1, v3, v4, v2}, Ljava/util/logging/FileHandler;-><init>(Ljava/lang/String;IIZ)V

    .line 32
    new-instance v1, Lcom/android/server/UiModeManagerService$LogWrapper$1;

    .line 34
    invoke-direct {v1}, Lcom/android/server/UiModeManagerService$LogWrapper$1;-><init>()V

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/logging/FileHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 40
    const-class v1, Lcom/android/server/UiModeManagerService$LogWrapper;

    .line 42
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 49
    move-result-object v1

    .line 50
    sput-object v1, Lcom/android/server/UiModeManagerService$LogWrapper;->logger:Ljava/util/logging/Logger;

    .line 52
    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 55
    sget-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    .line 57
    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 60
    const/4 v0, 0x0

    .line 61
    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->setUseParentHandlers(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    const-string v2, "Can not use LogWrapper "

    .line 70
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    const-string v1, "LogWrapper"

    .line 86
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_0
    return-void
.end method

.method public static getLogText()Ljava/lang/StringBuilder;
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Ljava/io/File;

    .line 4
    new-instance v2, Ljava/io/File;

    .line 6
    const-string v3, "/data/log/dark_mode_log0.txt"

    .line 8
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    const/4 v3, 0x0

    .line 12
    aput-object v2, v1, v3

    .line 14
    new-instance v2, Ljava/io/File;

    .line 16
    const-string v4, "/data/log/dark_mode_log1.txt"

    .line 18
    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    const/4 v4, 0x1

    .line 22
    aput-object v2, v1, v4

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    :goto_0
    if-ge v3, v0, :cond_2

    .line 31
    aget-object v4, v1, v3

    .line 33
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 36
    move-result v5

    .line 37
    if-nez v5, :cond_0

    .line 39
    goto :goto_2

    .line 40
    :cond_0
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    .line 42
    new-instance v6, Ljava/io/FileReader;

    .line 44
    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 47
    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 53
    move-result-object v4

    .line 54
    const/16 v6, 0xa

    .line 56
    if-eqz v4, :cond_1

    .line 58
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    goto :goto_1

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    goto :goto_3

    .line 67
    :cond_1
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 70
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    goto :goto_5

    .line 78
    :goto_3
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 81
    goto :goto_4

    .line 82
    :catchall_1
    move-exception v1

    .line 83
    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 86
    :goto_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 87
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 89
    const-string v2, "Can not use getLogText : "

    .line 91
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object v0

    .line 101
    const-string v1, "LogWrapper"

    .line 103
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v0, 0x0

    .line 107
    return-object v0

    .line 108
    :cond_2
    return-object v2
.end method

.method public static i(Ljava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/UiModeManagerService$LogWrapper;->logger:Ljava/util/logging/Logger;

    .line 3
    const-string v1, "UiModeManager"

    .line 5
    if-eqz v0, :cond_0

    .line 7
    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 12
    move-result v3

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v3

    .line 17
    filled-new-array {v1, v3, p0}, [Ljava/lang/Object;

    .line 20
    move-result-object v3

    .line 21
    const-string v4, "V %s(%d): %s\n"

    .line 23
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 30
    :cond_0
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method
