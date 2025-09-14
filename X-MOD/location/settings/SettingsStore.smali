.class public abstract Lcom/android/server/location/settings/SettingsStore;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCache:Lcom/android/server/location/settings/LocationUserSettings;

.field public final mFile:Landroid/util/AtomicFile;

.field public mInitialized:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/AtomicFile;

    .line 6
    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 9
    iput-object v0, p0, Lcom/android/server/location/settings/SettingsStore;->mFile:Landroid/util/AtomicFile;

    .line 11
    return-void
.end method


# virtual methods
.method public declared-synchronized deleteFile()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 8
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Lcom/android/server/location/settings/SettingsStore$$ExternalSyntheticLambda1;

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-direct {v2, p0, v0, v3}, Lcom/android/server/location/settings/SettingsStore$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/settings/SettingsStore;Ljava/lang/Object;I)V

    .line 18
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 21
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    monitor-exit p0

    .line 28
    throw v0
.end method

.method public declared-synchronized flushFile()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 8
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Lcom/android/server/location/settings/SettingsStore$$ExternalSyntheticLambda0;

    .line 14
    invoke-direct {v2, v0}, Lcom/android/server/location/settings/SettingsStore$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 17
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 20
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    monitor-exit p0

    .line 27
    throw v0
.end method

.method public final declared-synchronized initializeCache()V
    .locals 5

    .line 1
    const-string/jumbo v0, "error reading location settings ("

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/settings/SettingsStore;->mInitialized:Z

    .line 7
    if-nez v1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/android/server/location/settings/SettingsStore;->mFile:Landroid/util/AtomicFile;

    .line 11
    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    .line 14
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v1, :cond_0

    .line 18
    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    .line 20
    iget-object v3, p0, Lcom/android/server/location/settings/SettingsStore;->mFile:Landroid/util/AtomicFile;

    .line 22
    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 25
    move-result-object v3

    .line 26
    invoke-direct {v1, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    .line 32
    move-result v3

    .line 33
    invoke-virtual {p0, v3, v1}, Lcom/android/server/location/settings/SettingsStore;->read(ILjava/io/DataInput;)Lcom/android/server/location/settings/LocationUserSettings;

    .line 36
    move-result-object v3

    .line 37
    iput-object v3, p0, Lcom/android/server/location/settings/SettingsStore;->mCache:Lcom/android/server/location/settings/LocationUserSettings;

    .line 39
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 42
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 45
    goto :goto_2

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    goto :goto_4

    .line 48
    :catch_0
    move-exception v1

    .line 49
    goto :goto_1

    .line 50
    :catchall_1
    move-exception v3

    .line 51
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 54
    goto :goto_0

    .line 55
    :catchall_2
    move-exception v1

    .line 56
    :try_start_5
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 59
    :goto_0
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 60
    :goto_1
    :try_start_6
    const-string v3, "LocationManagerService"

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    .line 64
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/android/server/location/settings/SettingsStore;->mFile:Landroid/util/AtomicFile;

    .line 69
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    const-string v0, "), falling back to defaults"

    .line 74
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    invoke-static {v3, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/android/server/location/settings/SettingsStore;->mCache:Lcom/android/server/location/settings/LocationUserSettings;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 86
    if-nez v0, :cond_1

    .line 88
    :try_start_7
    new-instance v0, Ljava/io/DataInputStream;

    .line 90
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 92
    const/4 v3, 0x0

    .line 93
    new-array v3, v3, [B

    .line 95
    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 98
    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 101
    const v1, 0x7fffffff

    .line 104
    invoke-virtual {p0, v1, v0}, Lcom/android/server/location/settings/SettingsStore;->read(ILjava/io/DataInput;)Lcom/android/server/location/settings/LocationUserSettings;

    .line 107
    move-result-object v0

    .line 108
    iput-object v0, p0, Lcom/android/server/location/settings/SettingsStore;->mCache:Lcom/android/server/location/settings/LocationUserSettings;

    .line 110
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 113
    goto :goto_3

    .line 114
    :catch_1
    move-exception v0

    .line 115
    :try_start_8
    new-instance v1, Ljava/lang/AssertionError;

    .line 117
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 120
    throw v1

    .line 121
    :cond_1
    :goto_3
    iput-boolean v2, p0, Lcom/android/server/location/settings/SettingsStore;->mInitialized:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 123
    :cond_2
    monitor-exit p0

    .line 124
    return-void

    .line 125
    :goto_4
    monitor-exit p0

    .line 126
    throw v0
.end method

.method public abstract read(ILjava/io/DataInput;)Lcom/android/server/location/settings/LocationUserSettings;
.end method
