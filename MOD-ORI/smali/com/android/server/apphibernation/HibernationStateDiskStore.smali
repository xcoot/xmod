.class public final Lcom/android/server/apphibernation/HibernationStateDiskStore;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field public mFuture:Ljava/util/concurrent/ScheduledFuture;

.field public final mHibernationFile:Ljava/io/File;

.field public final mProtoReadWriter:Lcom/android/server/apphibernation/ProtoReadWriter;

.field public mScheduledStatesToWrite:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/android/server/apphibernation/ProtoReadWriter;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "states"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/apphibernation/HibernationStateDiskStore;-><init>(Ljava/io/File;Lcom/android/server/apphibernation/ProtoReadWriter;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/android/server/apphibernation/ProtoReadWriter;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/apphibernation/HibernationStateDiskStore;->mScheduledStatesToWrite:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/apphibernation/HibernationStateDiskStore;->mHibernationFile:Ljava/io/File;

    .line 5
    iput-object p3, p0, Lcom/android/server/apphibernation/HibernationStateDiskStore;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    iput-object p2, p0, Lcom/android/server/apphibernation/HibernationStateDiskStore;->mProtoReadWriter:Lcom/android/server/apphibernation/ProtoReadWriter;

    return-void
.end method


# virtual methods
.method public final readHibernationStates()Ljava/util/List;
    .locals 4

    .line 1
    const-string v0, "No hibernation file on disk for file "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/apphibernation/HibernationStateDiskStore;->mHibernationFile:Ljava/io/File;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const-string v1, "HibernationStateDiskStore"

    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/apphibernation/HibernationStateDiskStore;->mHibernationFile:Ljava/io/File;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    monitor-exit p0

    .line 37
    return-object v2

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance v0, Landroid/util/AtomicFile;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/android/server/apphibernation/HibernationStateDiskStore;->mHibernationFile:Ljava/io/File;

    .line 43
    .line 44
    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    :try_start_1
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v1, Landroid/util/proto/ProtoInputStream;

    .line 52
    .line 53
    invoke-direct {v1, v0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/server/apphibernation/HibernationStateDiskStore;->mProtoReadWriter:Lcom/android/server/apphibernation/ProtoReadWriter;

    .line 57
    .line 58
    invoke-interface {v0, v1}, Lcom/android/server/apphibernation/ProtoReadWriter;->readFromProto(Landroid/util/proto/ProtoInputStream;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Ljava/util/List;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .line 64
    :try_start_2
    monitor-exit p0

    .line 65
    return-object v0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    const-string v1, "HibernationStateDiskStore"

    .line 68
    .line 69
    const-string v3, "Failed to read states protobuf."

    .line 70
    .line 71
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    .line 73
    .line 74
    monitor-exit p0

    .line 75
    return-object v2

    .line 76
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    throw v0
.end method

.method public final scheduleWriteHibernationStates(Ljava/util/List;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/android/server/apphibernation/HibernationStateDiskStore;->mScheduledStatesToWrite:Ljava/util/List;

    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/server/apphibernation/HibernationStateDiskStore;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const-string p1, "HibernationStateDiskStore"

    .line 13
    .line 14
    const-string v0, "Scheduled executor service is shut down."

    .line 15
    .line 16
    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/android/server/apphibernation/HibernationStateDiskStore;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    const-string p1, "HibernationStateDiskStore"

    .line 28
    .line 29
    const-string v0, "Write already scheduled. Skipping schedule."

    .line 30
    .line 31
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :cond_1
    iget-object p1, p0, Lcom/android/server/apphibernation/HibernationStateDiskStore;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 37
    .line 38
    new-instance v0, Lcom/android/server/apphibernation/HibernationStateDiskStore$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lcom/android/server/apphibernation/HibernationStateDiskStore$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/apphibernation/HibernationStateDiskStore;)V

    .line 41
    .line 42
    .line 43
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 44
    .line 45
    const-wide/32 v2, 0xea60

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lcom/android/server/apphibernation/HibernationStateDiskStore;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 53
    .line 54
    monitor-exit p0

    .line 55
    return-void

    .line 56
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw p1
.end method

.method public final writeStateProto(Ljava/util/List;)V
    .locals 4

    .line 1
    const-string v0, "HibernationStateDiskStore"

    .line 2
    .line 3
    new-instance v1, Landroid/util/AtomicFile;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/apphibernation/HibernationStateDiskStore;->mHibernationFile:Ljava/io/File;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 11
    .line 12
    .line 13
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 14
    :try_start_1
    new-instance v3, Landroid/util/proto/ProtoOutputStream;

    .line 15
    .line 16
    invoke-direct {v3, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/apphibernation/HibernationStateDiskStore;->mProtoReadWriter:Lcom/android/server/apphibernation/ProtoReadWriter;

    .line 20
    .line 21
    invoke-interface {p0, v3, p1}, Lcom/android/server/apphibernation/ProtoReadWriter;->writeToProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    const-string p1, "Failed to finish write to states protobuf."

    .line 33
    .line 34
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void

    .line 41
    :catch_1
    move-exception p0

    .line 42
    const-string p1, "Failed to start write to states protobuf."

    .line 43
    .line 44
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    return-void
.end method
