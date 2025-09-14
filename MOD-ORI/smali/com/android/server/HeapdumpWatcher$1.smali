.class public final Lcom/android/server/HeapdumpWatcher$1;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/HeapdumpWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/HeapdumpWatcher;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/HeapdumpWatcher$1;->this$0:Lcom/android/server/HeapdumpWatcher;

    .line 2
    .line 3
    const-string/jumbo p1, "watchdogHeapDump"

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    const-string v0, "Watchdog:HeapdumpWatcher"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "/data/log/core"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v3, v2, [Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v1, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    new-array v4, v2, [Ljava/nio/file/LinkOption;

    .line 13
    .line 14
    invoke-static {v3, v4}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    const-string v3, " create folder /data/log/core"

    .line 21
    .line 22
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    new-array v3, v2, [Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v1, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v3, 0x1

    .line 32
    new-array v3, v3, [Ljava/nio/file/attribute/FileAttribute;

    .line 33
    .line 34
    const-string/jumbo v4, "rwxrwxrwx"

    .line 35
    .line 36
    .line 37
    invoke-static {v4}, Ljava/nio/file/attribute/PosixFilePermissions;->fromString(Ljava/lang/String;)Ljava/util/Set;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-static {v4}, Ljava/nio/file/attribute/PosixFilePermissions;->asFileAttribute(Ljava/util/Set;)Ljava/nio/file/attribute/FileAttribute;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    aput-object v4, v3, v2

    .line 46
    .line 47
    invoke-static {v1, v3}, Ljava/nio/file/Files;->createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 48
    .line 49
    .line 50
    :cond_0
    const-string v1, "Start dumping for java heapdump"

    .line 51
    .line 52
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    const-string v1, "/data/log/core/system_server.hprof"

    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/HeapdumpWatcher$1;->this$0:Lcom/android/server/HeapdumpWatcher;

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/HeapdumpWatcher;->softdog:Lcom/android/server/WatchdogSoftdog;

    .line 60
    .line 61
    const/16 v2, 0x3e8

    .line 62
    .line 63
    invoke-virtual {p0, v2}, Lcom/android/server/WatchdogSoftdog;->softdogKick(I)V

    .line 64
    .line 65
    .line 66
    invoke-static {v1}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catch_0
    const-string p0, "RuntimeException: Cannot dump for java heapdump"

    .line 71
    .line 72
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_1
    const-string p0, "IOException: Cannot dump for java heapdump"

    .line 77
    .line 78
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    :goto_0
    return-void
.end method
