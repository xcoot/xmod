.class public final Lcom/android/server/graphics/fonts/FontManagerService;
.super Lcom/android/internal/graphics/fonts/IFontManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDebugCertFilePath:Ljava/lang/String;

.field public final mIsSafeMode:Z

.field public mSerializedFontMap:Landroid/os/SharedMemory;

.field public final mSerializedFontMapLock:Ljava/lang/Object;

.field public mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

.field public final mUpdatableFontDirLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/util/concurrent/CompletableFuture;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/android/internal/graphics/fonts/IFontManager$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDirLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mDebugCertFilePath:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/Object;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMapLock:Ljava/lang/Object;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMap:Landroid/os/SharedMemory;

    .line 22
    .line 23
    const-string v2, "FontManagerService"

    .line 24
    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    const-string v3, "Entering safe mode. Deleting all font updates."

    .line 28
    .line 29
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    new-instance v3, Ljava/io/File;

    .line 33
    .line 34
    const-string v4, "/data/fonts/files"

    .line 35
    .line 36
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Ljava/io/File;

    .line 40
    .line 41
    const-string v5, "/data/fonts/config/config.xml"

    .line 42
    .line 43
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v3, v4}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->deleteAllFiles(Ljava/io/File;Ljava/io/File;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    iput-object p1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    iput-boolean p2, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mIsSafeMode:Z

    .line 52
    .line 53
    invoke-static {}, Lcom/android/text/flags/Flags;->useOptimizedBoottimeFontLoading()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    const-string p1, "Using optimized boot-time font loading."

    .line 60
    .line 61
    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    new-instance p1, Lcom/android/server/graphics/fonts/FontManagerService$$ExternalSyntheticLambda0;

    .line 65
    .line 66
    invoke-direct {p1, p0, p3}, Lcom/android/server/graphics/fonts/FontManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/graphics/fonts/FontManagerService;Ljava/util/concurrent/CompletableFuture;)V

    .line 67
    .line 68
    .line 69
    const-string p0, "FontManagerService_create"

    .line 70
    .line 71
    invoke-static {p0, p1}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    const-string p1, "Not using optimized boot-time font loading."

    .line 76
    .line 77
    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->initialize()V

    .line 81
    .line 82
    .line 83
    :try_start_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :try_start_1
    iget-object p0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMap:Landroid/os/SharedMemory;

    .line 85
    .line 86
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :try_start_2
    invoke-static {p0}, Landroid/graphics/Typeface;->setSystemFontMap(Landroid/os/SharedMemory;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 93
    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_0

    .line 94
    :catch_0
    const-string p0, "FontManagerService"

    .line 95
    .line 96
    const-string p1, "Failed to set system font map of system_server"

    .line 97
    .line 98
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    :goto_0
    invoke-virtual {p3, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    :goto_1
    return-void
.end method

.method public static closeFileDescriptors(Ljava/util/List;)V
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/graphics/fonts/FontUpdateRequest;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/fonts/FontUpdateRequest;->getFd()Landroid/os/ParcelFileDescriptor;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    const-string v1, "FontManagerService"

    .line 36
    .line 37
    const-string v2, "Failed to close fd"

    .line 38
    .line 39
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    return-void
.end method


# virtual methods
.method public final createUpdatableFontDir()Lcom/android/server/graphics/fonts/UpdatableFontDir;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mIsSafeMode:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-static {}, Lcom/android/internal/security/VerityUtils;->isFsVeritySupported()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const v1, 0x1070104

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mDebugCertFilePath:Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    array-length v1, v0

    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    new-array v1, v1, [Ljava/lang/String;

    .line 39
    .line 40
    array-length v2, v0

    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    .line 44
    .line 45
    array-length v0, v0

    .line 46
    iget-object p0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mDebugCertFilePath:Ljava/lang/String;

    .line 47
    .line 48
    aput-object p0, v1, v0

    .line 49
    .line 50
    move-object v0, v1

    .line 51
    :cond_2
    new-instance p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;

    .line 52
    .line 53
    new-instance v1, Ljava/io/File;

    .line 54
    .line 55
    const-string v2, "/data/fonts/files"

    .line 56
    .line 57
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance v2, Lcom/android/server/graphics/fonts/OtfFontFileParser;

    .line 61
    .line 62
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 63
    .line 64
    .line 65
    new-instance v3, Lcom/android/server/graphics/fonts/FontManagerService$FsverityUtilImpl;

    .line 66
    .line 67
    invoke-direct {v3, v0}, Lcom/android/server/graphics/fonts/FontManagerService$FsverityUtilImpl;-><init>([Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    new-instance v0, Ljava/io/File;

    .line 71
    .line 72
    const-string v4, "/data/fonts/config/config.xml"

    .line 73
    .line 74
    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;-><init>(Ljava/io/File;Lcom/android/server/graphics/fonts/OtfFontFileParser;Lcom/android/server/graphics/fonts/FontManagerService$FsverityUtilImpl;Ljava/io/File;)V

    .line 78
    .line 79
    .line 80
    return-object p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string p3, "FontManagerService"

    .line 4
    .line 5
    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p1, Lcom/android/server/graphics/fonts/FontManagerShellCommand;

    .line 13
    .line 14
    invoke-direct {p1, p0}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;-><init>(Lcom/android/server/graphics/fonts/FontManagerService;)V

    .line 15
    .line 16
    .line 17
    new-instance p0, Landroid/util/IndentingPrintWriter;

    .line 18
    .line 19
    const-string p3, "  "

    .line 20
    .line 21
    invoke-direct {p0, p2, p3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p1, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->mService:Lcom/android/server/graphics/fonts/FontManagerService;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/android/server/graphics/fonts/FontManagerService;->getSystemFontConfig()Landroid/text/FontConfig;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p0, p1}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;->dumpFontConfig(Landroid/util/IndentingPrintWriter;Landroid/text/FontConfig;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final getFontConfig()Landroid/text/FontConfig;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/graphics/fonts/IFontManager$Stub;->getFontConfig_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->getSystemFontConfig()Landroid/text/FontConfig;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final getSystemFontConfig()Landroid/text/FontConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDirLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Landroid/graphics/fonts/SystemFonts;->getSystemPreinstalledFontConfig()Landroid/text/FontConfig;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    monitor-exit v0

    .line 13
    return-object p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getSystemFontConfig()Landroid/text/FontConfig;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public final initialize()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDirLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->createUpdatableFontDir()Lcom/android/server/graphics/fonts/UpdatableFontDir;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iput-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

    .line 9
    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    invoke-static {}, Lcom/android/text/flags/Flags;->useOptimizedBoottimeFontLoading()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-static {}, Landroid/graphics/Typeface;->loadPreinstalledSystemFontMap()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/graphics/Typeface;->getSystemFontMap()Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Landroid/graphics/Typeface;->serializeFontMap(Ljava/util/Map;)Landroid/os/SharedMemory;

    .line 29
    .line 30
    .line 31
    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    goto :goto_1

    .line 33
    :catch_0
    move-exception v1

    .line 34
    :try_start_2
    const-string v2, "FontManagerService"

    .line 35
    .line 36
    const-string v3, "Failed to serialize SystemServer system font map"

    .line 37
    .line 38
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    :goto_1
    iget-object v2, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMapLock:Ljava/lang/Object;

    .line 43
    .line 44
    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    :try_start_3
    iget-object v3, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMap:Landroid/os/SharedMemory;

    .line 46
    .line 47
    iput-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMap:Landroid/os/SharedMemory;

    .line 48
    .line 49
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    :try_start_4
    invoke-virtual {v3}, Landroid/os/SharedMemory;->close()V

    .line 53
    .line 54
    .line 55
    :cond_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 56
    return-void

    .line 57
    :catchall_1
    move-exception p0

    .line 58
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 59
    :try_start_6
    throw p0

    .line 60
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->loadFontFileMap()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->updateSerializedFontMap()V

    .line 64
    .line 65
    .line 66
    monitor-exit v0

    .line 67
    return-void

    .line 68
    :goto_2
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 69
    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/graphics/fonts/FontManagerShellCommand;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/graphics/fonts/FontManagerShellCommand;-><init>(Lcom/android/server/graphics/fonts/FontManagerService;)V

    .line 4
    .line 5
    .line 6
    move-object v1, p0

    .line 7
    move-object v2, p1

    .line 8
    move-object v3, p2

    .line 9
    move-object v4, p3

    .line 10
    move-object v5, p4

    .line 11
    move-object v6, p5

    .line 12
    move-object v7, p6

    .line 13
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final update(ILjava/util/List;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDirLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mUpdatableFontDir:Lcom/android/server/graphics/fonts/UpdatableFontDir;

    .line 5
    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    const/4 v2, -0x1

    .line 9
    if-eq p1, v2, :cond_1

    .line 10
    .line 11
    iget v2, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigVersion:I

    .line 12
    .line 13
    if-ne v2, p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    .line 17
    .line 18
    const-string p1, "The base config version is older than current."

    .line 19
    .line 20
    const/4 p2, -0x8

    .line 21
    invoke-direct {p0, p2, p1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    invoke-virtual {v1, p2}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->update(Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->updateSerializedFontMap()V

    .line 31
    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :cond_2
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    .line 36
    .line 37
    const-string p1, "The font updater is disabled."

    .line 38
    .line 39
    const/4 p2, -0x7

    .line 40
    invoke-direct {p0, p2, p1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p0

    .line 44
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public final updateFontFamily(Ljava/util/List;I)I
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v1, "android.permission.UPDATE_FONTS"

    .line 10
    .line 11
    const-string v2, "UPDATE_FONTS permission required."

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    :try_start_1
    invoke-virtual {p0, p2, p1}, Lcom/android/server/graphics/fonts/FontManagerService;->update(ILjava/util/List;)V
    :try_end_1
    .catch Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/android/server/graphics/fonts/FontManagerService;->closeFileDescriptors(Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    return p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    :try_start_2
    const-string p2, "FontManagerService"

    .line 28
    .line 29
    const-string v0, "Failed to update font family"

    .line 30
    .line 31
    invoke-static {p2, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;->getErrorCode()I

    .line 35
    .line 36
    .line 37
    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    invoke-static {p1}, Lcom/android/server/graphics/fonts/FontManagerService;->closeFileDescriptors(Ljava/util/List;)V

    .line 39
    .line 40
    .line 41
    return p0

    .line 42
    :goto_0
    invoke-static {p1}, Lcom/android/server/graphics/fonts/FontManagerService;->closeFileDescriptors(Ljava/util/List;)V

    .line 43
    .line 44
    .line 45
    throw p0
.end method

.method public final updateSerializedFontMap()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/FontManagerService;->getSystemFontConfig()Landroid/text/FontConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :try_start_0
    invoke-static {v0, v1}, Landroid/graphics/fonts/SystemFonts;->buildSystemFallback(Landroid/text/FontConfig;Landroid/util/ArrayMap;)Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-static {v0, v3}, Landroid/graphics/fonts/SystemFonts;->buildSystemTypefaces(Landroid/text/FontConfig;Ljava/util/Map;)Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/graphics/Typeface;->serializeFontMap(Ljava/util/Map;)Landroid/os/SharedMemory;

    .line 20
    .line 21
    .line 22
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_3

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Ljava/nio/ByteBuffer;

    .line 42
    .line 43
    instance-of v4, v3, Ljava/nio/DirectByteBuffer;

    .line 44
    .line 45
    if-eqz v4, :cond_0

    .line 46
    .line 47
    invoke-static {v3}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_3

    .line 53
    :catch_0
    move-exception v0

    .line 54
    :try_start_1
    const-string v3, "FontManagerService"

    .line 55
    .line 56
    const-string v4, "Failed to serialize updatable font map. Retrying with system image fonts."

    .line 57
    .line 58
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Ljava/nio/ByteBuffer;

    .line 80
    .line 81
    instance-of v3, v1, Ljava/nio/DirectByteBuffer;

    .line 82
    .line 83
    if-eqz v3, :cond_1

    .line 84
    .line 85
    invoke-static {v1}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    move-object v0, v2

    .line 90
    :cond_3
    if-nez v0, :cond_4

    .line 91
    .line 92
    :try_start_2
    invoke-static {}, Landroid/graphics/Typeface;->getSystemFontMap()Ljava/util/Map;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {v0}, Landroid/graphics/Typeface;->serializeFontMap(Ljava/util/Map;)Landroid/os/SharedMemory;

    .line 97
    .line 98
    .line 99
    move-result-object v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_1

    .line 100
    goto :goto_2

    .line 101
    :catch_1
    move-exception v0

    .line 102
    const-string v1, "FontManagerService"

    .line 103
    .line 104
    const-string v3, "Failed to serialize SystemServer system font map"

    .line 105
    .line 106
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    .line 108
    .line 109
    :goto_2
    move-object v0, v2

    .line 110
    :cond_4
    iget-object v2, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMapLock:Ljava/lang/Object;

    .line 111
    .line 112
    monitor-enter v2

    .line 113
    :try_start_3
    iget-object v1, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMap:Landroid/os/SharedMemory;

    .line 114
    .line 115
    iput-object v0, p0, Lcom/android/server/graphics/fonts/FontManagerService;->mSerializedFontMap:Landroid/os/SharedMemory;

    .line 116
    .line 117
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 118
    if-eqz v1, :cond_5

    .line 119
    .line 120
    invoke-virtual {v1}, Landroid/os/SharedMemory;->close()V

    .line 121
    .line 122
    .line 123
    :cond_5
    return-void

    .line 124
    :catchall_1
    move-exception p0

    .line 125
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 126
    throw p0

    .line 127
    :goto_3
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_7

    .line 140
    .line 141
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    check-cast v1, Ljava/nio/ByteBuffer;

    .line 146
    .line 147
    instance-of v2, v1, Ljava/nio/DirectByteBuffer;

    .line 148
    .line 149
    if-eqz v2, :cond_6

    .line 150
    .line 151
    invoke-static {v1}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 152
    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_7
    throw p0
.end method
