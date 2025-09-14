.class public final Lcom/android/server/backup/transport/BackupTransportClient;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

.field public final mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

.field public final mTransportFutures:Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;


# direct methods
.method public constructor <init>(Lcom/android/internal/backup/IBackupTransport;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    .line 5
    .line 6
    new-instance p1, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    .line 7
    .line 8
    invoke-direct {p1}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    .line 12
    .line 13
    new-instance p1, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;

    .line 14
    .line 15
    invoke-direct {p1}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportFutures:Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final abortFullRestore()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->acquire()Lcom/android/server/backup/transport/TransportStatusCallback;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    .line 8
    .line 9
    invoke-interface {p0, v1}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore(Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/android/server/backup/transport/TransportStatusCallback;->getOperationStatus()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method public final clearBackupData(Landroid/content/pm/PackageInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->acquire()Lcom/android/server/backup/transport/TransportStatusCallback;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    .line 8
    .line 9
    invoke-interface {p0, p1, v1}, Lcom/android/internal/backup/IBackupTransport;->clearBackupData(Landroid/content/pm/PackageInfo;Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/android/server/backup/transport/TransportStatusCallback;->getOperationStatus()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method public final finishBackup()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->acquire()Lcom/android/server/backup/transport/TransportStatusCallback;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    .line 8
    .line 9
    invoke-interface {p0, v1}, Lcom/android/internal/backup/IBackupTransport;->finishBackup(Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/android/server/backup/transport/TransportStatusCallback;->getOperationStatus()I

    .line 13
    .line 14
    .line 15
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 17
    .line 18
    .line 19
    return p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public final getBackupManagerMonitor()Landroid/app/backup/IBackupManagerMonitor;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportFutures:Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->newFuture()Lcom/android/internal/infra/AndroidFuture;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    .line 8
    .line 9
    invoke-interface {v1, v0}, Lcom/android/internal/backup/IBackupTransport;->getBackupManagerMonitor(Lcom/android/internal/infra/AndroidFuture;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient;->getFutureResult(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroid/os/IBinder;

    .line 17
    .line 18
    invoke-static {p0}, Landroid/app/backup/IBackupManagerMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManagerMonitor;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final getBackupQuota(Ljava/lang/String;Z)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportFutures:Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->newFuture()Lcom/android/internal/infra/AndroidFuture;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    .line 8
    .line 9
    invoke-interface {v1, p1, p2, v0}, Lcom/android/internal/backup/IBackupTransport;->getBackupQuota(Ljava/lang/String;ZLcom/android/internal/infra/AndroidFuture;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient;->getFutureResult(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ljava/lang/Long;

    .line 17
    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    const-wide/16 p0, -0x3e8

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 24
    .line 25
    .line 26
    move-result-wide p0

    .line 27
    :goto_0
    return-wide p0
.end method

.method public final getFutureResult(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportFutures:Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lcom/android/server/backup/BackupAndRestoreFeatureFlags;->getBackupTransportFutureTimeoutMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/infra/AndroidFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->remove(Lcom/android/internal/infra/AndroidFuture;)V

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    :try_start_1
    const-string v1, "BackupTransportClient"

    .line 21
    .line 22
    const-string v2, "Failed to get result from transport:"

    .line 23
    .line 24
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->remove(Lcom/android/internal/infra/AndroidFuture;)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    return-object p0

    .line 32
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->remove(Lcom/android/internal/infra/AndroidFuture;)V

    .line 33
    .line 34
    .line 35
    throw v0
.end method

.method public final getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->acquire()Lcom/android/server/backup/transport/TransportStatusCallback;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    .line 8
    .line 9
    invoke-interface {p0, p1, v1}, Lcom/android/internal/backup/IBackupTransport;->getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/android/server/backup/transport/TransportStatusCallback;->getOperationStatus()I

    .line 13
    .line 14
    .line 15
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 17
    .line 18
    .line 19
    return p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public final getTransportFlags()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportFutures:Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->newFuture()Lcom/android/internal/infra/AndroidFuture;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    .line 8
    .line 9
    invoke-interface {v1, v0}, Lcom/android/internal/backup/IBackupTransport;->getTransportFlags(Lcom/android/internal/infra/AndroidFuture;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient;->getFutureResult(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ljava/lang/Integer;

    .line 17
    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    const/16 p0, -0x3e8

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    :goto_0
    return p0
.end method

.method public final name()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportFutures:Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->newFuture()Lcom/android/internal/infra/AndroidFuture;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    .line 8
    .line 9
    invoke-interface {v1, v0}, Lcom/android/internal/backup/IBackupTransport;->name(Lcom/android/internal/infra/AndroidFuture;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient;->getFutureResult(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ljava/lang/String;

    .line 17
    .line 18
    return-object p0
.end method

.method public final onBecomingUnusable()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mPoolLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, v0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mActiveCallbacks:Ljava/util/Set;

    .line 7
    .line 8
    check-cast v2, Ljava/util/HashSet;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lcom/android/server/backup/transport/TransportStatusCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    const/16 v4, -0x3e8

    .line 27
    .line 28
    :try_start_1
    invoke-virtual {v3, v4}, Lcom/android/server/backup/transport/TransportStatusCallback;->onOperationCompleteWithStatus(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/android/server/backup/transport/TransportStatusCallback;->getOperationStatus()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_4

    .line 37
    :catch_0
    :goto_1
    :try_start_2
    iget-object v4, v0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mCallbackPool:Ljava/util/Queue;

    .line 38
    .line 39
    check-cast v4, Ljava/util/ArrayDeque;

    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->size()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    const/16 v5, 0x64

    .line 46
    .line 47
    if-ge v4, v5, :cond_0

    .line 48
    .line 49
    iget-object v4, v0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mCallbackPool:Ljava/util/Queue;

    .line 50
    .line 51
    check-cast v4, Ljava/util/ArrayDeque;

    .line 52
    .line 53
    invoke-virtual {v4, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, v0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mActiveCallbacks:Ljava/util/Set;

    .line 58
    .line 59
    check-cast v0, Ljava/util/HashSet;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 62
    .line 63
    .line 64
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportFutures:Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;

    .line 66
    .line 67
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->mActiveFuturesLock:Ljava/lang/Object;

    .line 68
    .line 69
    monitor-enter v0

    .line 70
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->mActiveFutures:Ljava/util/Set;

    .line 71
    .line 72
    check-cast v1, Ljava/util/HashSet;

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    :catch_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_2

    .line 83
    .line 84
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Lcom/android/internal/infra/AndroidFuture;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 89
    .line 90
    const/4 v3, 0x1

    .line 91
    :try_start_4
    invoke-virtual {v2, v3}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :catchall_1
    move-exception p0

    .line 96
    goto :goto_3

    .line 97
    :cond_2
    :try_start_5
    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->mActiveFutures:Ljava/util/Set;

    .line 98
    .line 99
    check-cast p0, Ljava/util/HashSet;

    .line 100
    .line 101
    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    .line 102
    .line 103
    .line 104
    monitor-exit v0

    .line 105
    return-void

    .line 106
    :goto_3
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 107
    throw p0

    .line 108
    :goto_4
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 109
    throw p0
.end method

.method public final performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->acquire()Lcom/android/server/backup/transport/TransportStatusCallback;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    .line 8
    .line 9
    invoke-interface {p0, p1, p2, p3, v1}, Lcom/android/internal/backup/IBackupTransport;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;ILcom/android/internal/backup/ITransportStatusCallback;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/android/server/backup/transport/TransportStatusCallback;->getOperationStatus()I

    .line 13
    .line 14
    .line 15
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 17
    .line 18
    .line 19
    return p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public final requestFullBackupTime()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportFutures:Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->newFuture()Lcom/android/internal/infra/AndroidFuture;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    .line 8
    .line 9
    invoke-interface {v1, v0}, Lcom/android/internal/backup/IBackupTransport;->requestFullBackupTime(Lcom/android/internal/infra/AndroidFuture;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/backup/transport/BackupTransportClient;->getFutureResult(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ljava/lang/Long;

    .line 17
    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    const-wide/16 v0, -0x3e8

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    :goto_0
    return-wide v0
.end method

.method public final sendBackupData(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->acquire()Lcom/android/server/backup/transport/TransportStatusCallback;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    .line 8
    .line 9
    invoke-interface {p0, p1, v1}, Lcom/android/internal/backup/IBackupTransport;->sendBackupData(ILcom/android/internal/backup/ITransportStatusCallback;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/backup/transport/TransportStatusCallback;->getOperationStatus()I

    .line 13
    .line 14
    .line 15
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 17
    .line 18
    .line 19
    return p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method
