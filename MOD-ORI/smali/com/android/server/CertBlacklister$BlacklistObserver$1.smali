.class public final Lcom/android/server/CertBlacklister$BlacklistObserver$1;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/CertBlacklister$BlacklistObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/CertBlacklister$BlacklistObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/CertBlacklister$BlacklistObserver$1;->this$0:Lcom/android/server/CertBlacklister$BlacklistObserver;

    .line 2
    .line 3
    const-string p1, "BlacklistUpdater"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/CertBlacklister$BlacklistObserver$1;->this$0:Lcom/android/server/CertBlacklister$BlacklistObserver;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/CertBlacklister$BlacklistObserver;->mTmpDir:Ljava/io/File;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/CertBlacklister$BlacklistObserver$1;->this$0:Lcom/android/server/CertBlacklister$BlacklistObserver;

    .line 7
    .line 8
    iget-object v2, v1, Lcom/android/server/CertBlacklister$BlacklistObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/android/server/CertBlacklister$BlacklistObserver;->mKey:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v2, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const-string v2, "CertBlacklister"

    .line 19
    .line 20
    const-string v3, "Certificate blacklist changed, updating..."

    .line 21
    .line 22
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    :try_start_1
    const-string/jumbo v3, "journal"

    .line 27
    .line 28
    .line 29
    const-string v4, ""

    .line 30
    .line 31
    iget-object v5, p0, Lcom/android/server/CertBlacklister$BlacklistObserver$1;->this$0:Lcom/android/server/CertBlacklister$BlacklistObserver;

    .line 32
    .line 33
    iget-object v5, v5, Lcom/android/server/CertBlacklister$BlacklistObserver;->mTmpDir:Ljava/io/File;

    .line 34
    .line 35
    invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const/4 v4, 0x1

    .line 40
    const/4 v5, 0x0

    .line 41
    invoke-virtual {v3, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 42
    .line 43
    .line 44
    new-instance v4, Ljava/io/FileOutputStream;

    .line 45
    .line 46
    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 47
    .line 48
    .line 49
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 54
    .line 55
    .line 56
    invoke-static {v4}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 57
    .line 58
    .line 59
    new-instance v1, Ljava/io/File;

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/CertBlacklister$BlacklistObserver$1;->this$0:Lcom/android/server/CertBlacklister$BlacklistObserver;

    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/CertBlacklister$BlacklistObserver;->mPath:Ljava/lang/String;

    .line 64
    .line 65
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 69
    .line 70
    .line 71
    const-string p0, "CertBlacklister"

    .line 72
    .line 73
    const-string v1, "Certificate blacklist updated"

    .line 74
    .line 75
    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 76
    .line 77
    .line 78
    :try_start_3
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    goto :goto_3

    .line 84
    :catchall_1
    move-exception p0

    .line 85
    move-object v2, v4

    .line 86
    goto :goto_1

    .line 87
    :catch_0
    move-exception p0

    .line 88
    move-object v2, v4

    .line 89
    goto :goto_0

    .line 90
    :catchall_2
    move-exception p0

    .line 91
    goto :goto_1

    .line 92
    :catch_1
    move-exception p0

    .line 93
    :goto_0
    :try_start_4
    const-string v1, "CertBlacklister"

    .line 94
    .line 95
    const-string v3, "Failed to write blacklist"

    .line 96
    .line 97
    invoke-static {v1, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 98
    .line 99
    .line 100
    :try_start_5
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :goto_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 105
    .line 106
    .line 107
    throw p0

    .line 108
    :cond_0
    :goto_2
    monitor-exit v0

    .line 109
    return-void

    .line 110
    :goto_3
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 111
    throw p0
.end method
