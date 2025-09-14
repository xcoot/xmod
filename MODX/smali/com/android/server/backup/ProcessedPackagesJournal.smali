.class public final Lcom/android/server/backup/ProcessedPackagesJournal;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mProcessedPackages:Ljava/util/Set;

.field public final mStateDirectory:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/backup/ProcessedPackagesJournal;->mProcessedPackages:Ljava/util/Set;

    .line 11
    iput-object p1, p0, Lcom/android/server/backup/ProcessedPackagesJournal;->mStateDirectory:Ljava/io/File;

    .line 13
    return-void
.end method


# virtual methods
.method public final loadFromDisk()V
    .locals 5

    .line 1
    const-string v0, "ProcessedPackagesJournal"

    .line 3
    new-instance v1, Ljava/io/File;

    .line 5
    iget-object v2, p0, Lcom/android/server/backup/ProcessedPackagesJournal;->mStateDirectory:Ljava/io/File;

    .line 7
    const-string/jumbo v3, "processed"

    .line 10
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 19
    return-void

    .line 20
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    .line 22
    new-instance v3, Ljava/io/BufferedInputStream;

    .line 24
    new-instance v4, Ljava/io/FileInputStream;

    .line 26
    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 29
    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 32
    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    const-string v4, "   + "

    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v3

    .line 56
    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v3, p0, Lcom/android/server/backup/ProcessedPackagesJournal;->mProcessedPackages:Ljava/util/Set;

    .line 61
    check-cast v3, Ljava/util/HashSet;

    .line 63
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 71
    goto :goto_1

    .line 72
    :catchall_1
    move-exception v1

    .line 73
    :try_start_3
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 76
    :goto_1
    throw p0
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 77
    :catch_0
    move-exception p0

    .line 78
    const-string v1, "Error reading processed packages journal"

    .line 80
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    :catch_1
    return-void
.end method
