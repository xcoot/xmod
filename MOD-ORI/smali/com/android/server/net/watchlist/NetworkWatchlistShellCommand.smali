.class public final Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mService:Lcom/android/server/net/watchlist/NetworkWatchlistService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/watchlist/NetworkWatchlistService;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;->mService:Lcom/android/server/net/watchlist/NetworkWatchlistService;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, -0x1

    .line 13
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const v3, 0x68c30bf2

    .line 18
    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    if-eq v2, v3, :cond_2

    .line 22
    .line 23
    const v3, 0x6e84e1aa

    .line 24
    .line 25
    .line 26
    if-eq v2, v3, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-string/jumbo v2, "force-generate-report"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    move v2, v4

    .line 39
    goto :goto_1

    .line 40
    :catch_0
    move-exception p0

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    const-string/jumbo v2, "set-test-config"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    goto :goto_1

    .line 53
    :cond_3
    :goto_0
    move v2, v1

    .line 54
    :goto_1
    if-eqz v2, :cond_5

    .line 55
    .line 56
    if-eq v2, v4, :cond_4

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    return p0

    .line 63
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;->runForceGenerateReport()I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    return p0

    .line 68
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;->runSetTestConfig()I

    .line 69
    .line 70
    .line 71
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    return p0

    .line 73
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v2, "Exception: "

    .line 76
    .line 77
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return v1
.end method

.method public final onHelp()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "Network watchlist manager commands:"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "  help"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "    Print this help text."

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "  set-test-config your_watchlist_config.xml"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "    Set network watchlist test config file."

    .line 26
    .line 27
    const-string v1, "  force-generate-report"

    .line 28
    .line 29
    const-string v2, "    Force generate watchlist test report."

    .line 30
    .line 31
    invoke-static {p0, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final runForceGenerateReport()I
    .locals 9

    .line 1
    const-string v0, "Error: "

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    const/4 v4, -0x1

    .line 12
    :try_start_0
    sget-object v5, Lcom/android/server/net/watchlist/WatchlistConfig;->sInstance:Lcom/android/server/net/watchlist/WatchlistConfig;

    .line 13
    .line 14
    iget-boolean v5, v5, Lcom/android/server/net/watchlist/WatchlistConfig;->mIsSecureConfig:Z

    .line 15
    .line 16
    if-eqz v5, :cond_0

    .line 17
    .line 18
    const-string p0, "Error: Cannot force generate report under production config"

    .line 19
    .line 20
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 24
    .line 25
    .line 26
    return v4

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_2

    .line 29
    :catch_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    const-string/jumbo v6, "network_watchlist_last_report_time"

    .line 38
    .line 39
    .line 40
    const-wide/16 v7, 0x0

    .line 41
    .line 42
    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;->mService:Lcom/android/server/net/watchlist/NetworkWatchlistService;

    .line 46
    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 48
    .line 49
    .line 50
    move-result-wide v5

    .line 51
    iget-object v7, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    .line 52
    .line 53
    iget-boolean v7, v7, Lcom/android/server/net/watchlist/WatchlistConfig;->mIsSecureConfig:Z

    .line 54
    .line 55
    if-eqz v7, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object p0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mNetworkWatchlistHandler:Lcom/android/server/net/watchlist/WatchlistLoggingHandler;

    .line 59
    .line 60
    const/4 v7, 0x3

    .line 61
    invoke-virtual {p0, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    iput-object v5, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 70
    .line 71
    invoke-virtual {p0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 72
    .line 73
    .line 74
    :goto_0
    const-string p0, "Success!"

    .line 75
    .line 76
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .line 78
    .line 79
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    .line 81
    .line 82
    const/4 p0, 0x0

    .line 83
    return p0

    .line 84
    :goto_1
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    .line 98
    .line 99
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 100
    .line 101
    .line 102
    return v4

    .line 103
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 104
    .line 105
    .line 106
    throw p0
.end method

.method public final runSetTestConfig()I
    .locals 6

    .line 1
    const-string v0, "Error: can\'t open input file "

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, -0x1

    .line 8
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    const-string/jumbo v4, "r"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v3, v4}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    new-instance p0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return v2

    .line 37
    :catch_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    :try_start_1
    sget-object p0, Lcom/android/server/net/watchlist/WatchlistConfig;->sInstance:Lcom/android/server/net/watchlist/WatchlistConfig;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    const-string v3, "WatchlistConfig"

    .line 50
    .line 51
    const-string v4, "Setting watchlist testing config"

    .line 52
    .line 53
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    new-instance v3, Ljava/io/File;

    .line 57
    .line 58
    const-string v4, "/data/misc/network_watchlist/network_watchlist_for_test.xml"

    .line 59
    .line 60
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v3}, Landroid/os/FileUtils;->copyToFileOrThrow(Ljava/io/InputStream;Ljava/io/File;)V

    .line 64
    .line 65
    .line 66
    const/4 v3, 0x0

    .line 67
    iput-boolean v3, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIsSecureConfig:Z

    .line 68
    .line 69
    new-instance v5, Ljava/io/File;

    .line 70
    .line 71
    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iput-object v5, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mXmlFile:Ljava/io/File;

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistConfig;->reloadConfig()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .line 78
    .line 79
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 80
    .line 81
    .line 82
    const-string p0, "Success!"

    .line 83
    .line 84
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 85
    .line 86
    .line 87
    return v3

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :catchall_1
    move-exception v0

    .line 94
    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 98
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v3, "Error: "

    .line 101
    .line 102
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    return v2
.end method
