.class public final synthetic Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageArchiver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageArchiver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/pm/PackageArchiver;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/pm/PackageArchiver;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mArchiveVersionMap:Ljava/util/HashMap;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 7
    .line 8
    sget-object v2, Lcom/android/server/pm/PackageArchiver;->FILE_PATH:Ljava/lang/String;

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    .line 14
    .line 15
    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    .line 18
    :try_start_2
    new-instance v1, Ljava/io/ObjectOutputStream;

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 21
    .line 22
    .line 23
    :try_start_3
    iget-object v3, p0, Lcom/android/server/pm/PackageArchiver;->mArchiveVersionMap:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {v1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 26
    .line 27
    .line 28
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 29
    .line 30
    .line 31
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 32
    .line 33
    .line 34
    goto :goto_3

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_4

    .line 37
    :catchall_1
    move-exception v1

    .line 38
    goto :goto_1

    .line 39
    :catchall_2
    move-exception v3

    .line 40
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_3
    move-exception v1

    .line 45
    :try_start_7
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 49
    :goto_1
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :catchall_4
    move-exception v2

    .line 54
    :try_start_9
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    :goto_2
    throw v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 58
    :catch_0
    :try_start_a
    const-string v1, "PackageArchiverService"

    .line 59
    .line 60
    const-string/jumbo v2, "versionMap write error!"

    .line 61
    .line 62
    .line 63
    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    :goto_3
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_0

    .line 71
    .line 72
    const-string v1, "PackageArchiverService"

    .line 73
    .line 74
    const-string/jumbo v2, "write writeAppVersion"

    .line 75
    .line 76
    .line 77
    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver;->mArchiveVersionMap:Ljava/util/HashMap;

    .line 81
    .line 82
    new-instance v1, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda7;

    .line 83
    .line 84
    const/4 v2, 0x1

    .line 85
    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda7;-><init>(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 89
    .line 90
    .line 91
    :cond_0
    monitor-exit v0

    .line 92
    return-void

    .line 93
    :goto_4
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 94
    throw p0
.end method
