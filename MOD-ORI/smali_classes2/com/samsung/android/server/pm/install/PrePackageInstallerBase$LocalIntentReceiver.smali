.class public final Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mLocalSender:Ljava/lang/Object;

.field public mResult:Ljava/lang/Object;


# virtual methods
.method public flush()V
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "/data/log/PreloadInstaller.txt"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    :try_start_1
    new-instance v3, Ljava/io/OutputStreamWriter;

    .line 15
    .line 16
    const-string v4, "UTF-8"

    .line 17
    .line 18
    invoke-direct {v3, v1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    .line 20
    .line 21
    :try_start_2
    iget-object v4, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->mResult:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v4, Ljava/lang/StringBuffer;

    .line 24
    .line 25
    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 26
    :try_start_3
    iget-object v5, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->mResult:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v5, Ljava/lang/StringBuffer;

    .line 29
    .line 30
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {v3, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->mResult:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p0, Ljava/lang/StringBuffer;

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 43
    .line 44
    .line 45
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 46
    :try_start_4
    invoke-virtual {v0, v2, v5}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 47
    .line 48
    .line 49
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 50
    .line 51
    .line 52
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_5

    .line 56
    :catch_0
    move-exception p0

    .line 57
    goto :goto_4

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_2

    .line 60
    :catchall_1
    move-exception p0

    .line 61
    goto :goto_0

    .line 62
    :catchall_2
    move-exception p0

    .line 63
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 64
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 65
    :goto_0
    :try_start_9
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :catchall_3
    move-exception v0

    .line 70
    :try_start_a
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    :goto_1
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 74
    :goto_2
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 75
    .line 76
    .line 77
    goto :goto_3

    .line 78
    :catchall_4
    move-exception v0

    .line 79
    :try_start_c
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    :goto_3
    throw p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 83
    :goto_4
    const-string v0, "PrePackageInstaller"

    .line 84
    .line 85
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    .line 87
    .line 88
    :goto_5
    return-void
.end method

.method public out(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->mLocalSender:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Ljava/text/SimpleDateFormat;

    .line 8
    .line 9
    new-instance v3, Ljava/util/Date;

    .line 10
    .line 11
    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "PrePackageInstaller"

    .line 19
    .line 20
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->mResult:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, Ljava/lang/StringBuffer;

    .line 26
    .line 27
    monitor-enter v1

    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->mResult:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p0, Ljava/lang/StringBuffer;

    .line 31
    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, " : "

    .line 41
    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p1, "\n"

    .line 49
    .line 50
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    .line 59
    .line 60
    monitor-exit v1

    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw p0
.end method
