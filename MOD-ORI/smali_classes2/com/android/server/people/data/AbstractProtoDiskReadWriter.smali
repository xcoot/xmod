.class public abstract Lcom/android/server/people/data/AbstractProtoDiskReadWriter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mRootDir:Ljava/io/File;

.field public final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field public final mScheduledFileDataMap:Ljava/util/Map;

.field public mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFileDataMap:Ljava/util/Map;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mRootDir:Ljava/io/File;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final delete(Ljava/lang/String;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFileDataMap:Ljava/util/Map;

    .line 3
    .line 4
    check-cast v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    new-instance v0, Ljava/io/File;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mRootDir:Ljava/io/File;

    .line 13
    .line 14
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-nez p0, :cond_1

    .line 29
    .line 30
    const-string p0, "AbstractProtoDiskReadWriter"

    .line 31
    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v1, "Failed to delete file: "

    .line 35
    .line 36
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    throw p1
.end method

.method public abstract protoStreamReader()Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamReader;
.end method

.method public abstract protoStreamWriter()Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamWriter;
.end method

.method public final read(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mRootDir:Ljava/io/File;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/people/data/AbstractProtoDiskReadWriter$$ExternalSyntheticLambda1;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 v0, 0x0

    .line 13
    if-eqz p1, :cond_4

    .line 14
    .line 15
    array-length v1, p1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto :goto_3

    .line 19
    :cond_0
    array-length v1, p1

    .line 20
    const/4 v2, 0x1

    .line 21
    const-string v3, "AbstractProtoDiskReadWriter"

    .line 22
    .line 23
    if-le v1, v2, :cond_1

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, "Found multiple files with the same name: "

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v1, v2, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    const/4 v1, 0x0

    .line 40
    aget-object p1, p1, v1

    .line 41
    .line 42
    new-instance v1, Landroid/util/AtomicFile;

    .line 43
    .line 44
    invoke-direct {v1, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 45
    .line 46
    .line 47
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 48
    .line 49
    .line 50
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :try_start_1
    new-instance v1, Landroid/util/proto/ProtoInputStream;

    .line 52
    .line 53
    invoke-direct {v1, p1}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->protoStreamReader()Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamReader;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-interface {p0, v1}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamReader;->read(Landroid/util/proto/ProtoInputStream;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception p0

    .line 71
    goto :goto_2

    .line 72
    :cond_2
    :goto_0
    move-object v0, p0

    .line 73
    goto :goto_3

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catchall_1
    move-exception p1

    .line 82
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    :cond_3
    :goto_1
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 86
    :goto_2
    const-string p1, "Failed to parse protobuf file."

    .line 87
    .line 88
    invoke-static {v3, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    .line 90
    .line 91
    :cond_4
    :goto_3
    return-object v0
.end method

.method public final saveImmediately(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFileDataMap:Ljava/util/Map;

    .line 3
    .line 4
    check-cast v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    monitor-enter p0

    .line 11
    :try_start_1
    iget-object p1, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFileDataMap:Ljava/util/Map;

    .line 12
    .line 13
    check-cast p1, Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_2

    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    iget-object p1, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    const/4 p2, 0x1

    .line 35
    invoke-interface {p1, p2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_3

    .line 41
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    iget-object p1, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 43
    .line 44
    new-instance p2, Lcom/android/server/people/data/AbstractProtoDiskReadWriter$$ExternalSyntheticLambda0;

    .line 45
    .line 46
    invoke-direct {p2, p0}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/AbstractProtoDiskReadWriter;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p1, p2}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    :try_start_2
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 54
    .line 55
    const-wide/16 v0, 0x1388

    .line 56
    .line 57
    invoke-interface {p0, v0, v1, p1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :catch_0
    move-exception p0

    .line 62
    const-string p1, "AbstractProtoDiskReadWriter"

    .line 63
    .line 64
    const-string p2, "Failed to save data immediately."

    .line 65
    .line 66
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    :goto_1
    :try_start_3
    monitor-exit p0

    .line 71
    :goto_2
    return-void

    .line 72
    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73
    throw p1

    .line 74
    :catchall_1
    move-exception p1

    .line 75
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 76
    throw p1
.end method

.method public final declared-synchronized scheduleSave(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFileDataMap:Ljava/util/Map;

    .line 3
    .line 4
    check-cast v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const-string p1, "AbstractProtoDiskReadWriter"

    .line 18
    .line 19
    const-string p2, "Worker is shutdown, failed to schedule data saving."

    .line 20
    .line 21
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 35
    .line 36
    new-instance p2, Lcom/android/server/people/data/AbstractProtoDiskReadWriter$$ExternalSyntheticLambda0;

    .line 37
    .line 38
    invoke-direct {p2, p0}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/AbstractProtoDiskReadWriter;)V

    .line 39
    .line 40
    .line 41
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 42
    .line 43
    const-wide/32 v1, 0x1d4c0

    .line 44
    .line 45
    .line 46
    invoke-interface {p1, p2, v1, v2, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    .line 52
    monitor-exit p0

    .line 53
    return-void

    .line 54
    :goto_0
    monitor-exit p0

    .line 55
    throw p1
.end method

.method public final writeTo(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->mRootDir:Ljava/io/File;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Landroid/util/AtomicFile;

    .line 9
    .line 10
    invoke-direct {p1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 14
    .line 15
    .line 16
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :try_start_1
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->protoStreamWriter()Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamWriter;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-interface {p0, v1, p2}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamWriter;->write(Landroid/util/proto/ProtoOutputStream;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    invoke-virtual {p1, p0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 42
    .line 43
    .line 44
    throw p0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    const-string p1, "AbstractProtoDiskReadWriter"

    .line 47
    .line 48
    const-string p2, "Failed to write to protobuf file."

    .line 49
    .line 50
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .line 52
    .line 53
    return-void
.end method
