.class Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mTransportClientRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/backup/transport/TransportConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;->mContext:Landroid/content/Context;

    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 8
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 11
    iput-object p1, p0, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;->mTransportClientRef:Ljava/lang/ref/WeakReference;

    .line 13
    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;->mTransportClientRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/server/backup/transport/TransportConnection;

    .line 9
    if-nez p1, :cond_0

    .line 11
    const-string p1, "TransportConnection.onBindingDied()"

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;->referenceLost(Ljava/lang/String;)V

    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p0, p1, Lcom/android/server/backup/transport/TransportConnection;->mStateLock:Ljava/lang/Object;

    .line 19
    monitor-enter p0

    .line 20
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/backup/transport/TransportConnection;->checkStateIntegrityLocked()V

    .line 23
    const-string v0, "Binding died: client UNUSABLE"

    .line 25
    const/4 v1, 0x6

    .line 26
    invoke-virtual {p1, v1, v0}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;)V

    .line 29
    iget-object v0, p1, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    .line 31
    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p1, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    .line 35
    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient;->onBecomingUnusable()V

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_2

    .line 41
    :cond_1
    :goto_0
    iget v0, p1, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    .line 43
    const/4 v2, 0x1

    .line 44
    const/4 v3, 0x0

    .line 45
    const/4 v4, 0x0

    .line 46
    if-eq v0, v2, :cond_4

    .line 48
    const/4 v1, 0x2

    .line 49
    if-eq v0, v1, :cond_3

    .line 51
    const/4 v1, 0x3

    .line 52
    if-eq v0, v1, :cond_2

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {p1, v3, v4}, Lcom/android/server/backup/transport/TransportConnection;->setStateLocked(ILcom/android/server/backup/transport/BackupTransportClient;)V

    .line 58
    iget-object v0, p1, Lcom/android/server/backup/transport/TransportConnection;->mContext:Landroid/content/Context;

    .line 60
    iget-object p1, p1, Lcom/android/server/backup/transport/TransportConnection;->mConnection:Landroid/content/ServiceConnection;

    .line 62
    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    invoke-virtual {p1, v3, v4}, Lcom/android/server/backup/transport/TransportConnection;->setStateLocked(ILcom/android/server/backup/transport/BackupTransportClient;)V

    .line 69
    iget-object v0, p1, Lcom/android/server/backup/transport/TransportConnection;->mContext:Landroid/content/Context;

    .line 71
    iget-object v1, p1, Lcom/android/server/backup/transport/TransportConnection;->mConnection:Landroid/content/ServiceConnection;

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 76
    invoke-virtual {p1, v4}, Lcom/android/server/backup/transport/TransportConnection;->notifyListenersAndClearLocked(Lcom/android/server/backup/transport/BackupTransportClient;)V

    .line 79
    goto :goto_1

    .line 80
    :cond_4
    const-string v0, "Unexpected state transition IDLE => UNUSABLE"

    .line 82
    invoke-virtual {p1, v1, v0}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;)V

    .line 85
    invoke-virtual {p1, v3, v4}, Lcom/android/server/backup/transport/TransportConnection;->setStateLocked(ILcom/android/server/backup/transport/BackupTransportClient;)V

    .line 88
    :goto_1
    monitor-exit p0

    .line 89
    return-void

    .line 90
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    throw p1
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;->mTransportClientRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/server/backup/transport/TransportConnection;

    .line 9
    if-nez p1, :cond_0

    .line 11
    const-string p1, "TransportConnection.onServiceConnected()"

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;->referenceLost(Ljava/lang/String;)V

    .line 16
    return-void

    .line 17
    :cond_0
    invoke-static {p2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 20
    invoke-static {p2}, Lcom/android/internal/backup/IBackupTransport$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/IBackupTransport;

    .line 23
    move-result-object p0

    .line 24
    new-instance p2, Lcom/android/server/backup/transport/BackupTransportClient;

    .line 26
    invoke-direct {p2, p0}, Lcom/android/server/backup/transport/BackupTransportClient;-><init>(Lcom/android/internal/backup/IBackupTransport;)V

    .line 29
    iget-object p0, p1, Lcom/android/server/backup/transport/TransportConnection;->mStateLock:Ljava/lang/Object;

    .line 31
    monitor-enter p0

    .line 32
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/backup/transport/TransportConnection;->checkStateIntegrityLocked()V

    .line 35
    iget v0, p1, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    .line 37
    if-eqz v0, :cond_1

    .line 39
    const-string v0, "Transport connected"

    .line 41
    const/4 v1, 0x3

    .line 42
    invoke-virtual {p1, v1, v0}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;)V

    .line 45
    invoke-virtual {p1, v1, p2}, Lcom/android/server/backup/transport/TransportConnection;->setStateLocked(ILcom/android/server/backup/transport/BackupTransportClient;)V

    .line 48
    invoke-virtual {p1, p2}, Lcom/android/server/backup/transport/TransportConnection;->notifyListenersAndClearLocked(Lcom/android/server/backup/transport/BackupTransportClient;)V

    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    monitor-exit p0

    .line 55
    return-void

    .line 56
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;->mTransportClientRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/server/backup/transport/TransportConnection;

    .line 9
    if-nez p1, :cond_0

    .line 11
    const-string p1, "TransportConnection.onServiceDisconnected()"

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;->referenceLost(Ljava/lang/String;)V

    .line 16
    return-void

    .line 17
    :cond_0
    const-string p0, "Exception trying to unbind onServiceDisconnected(): "

    .line 19
    iget-object v0, p1, Lcom/android/server/backup/transport/TransportConnection;->mStateLock:Ljava/lang/Object;

    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    const-string v1, "Service disconnected: client UNUSABLE"

    .line 24
    const/4 v2, 0x6

    .line 25
    invoke-virtual {p1, v2, v1}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;)V

    .line 28
    iget-object v1, p1, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    .line 30
    if-eqz v1, :cond_1

    .line 32
    iget-object v1, p1, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    .line 34
    invoke-virtual {v1}, Lcom/android/server/backup/transport/BackupTransportClient;->onBecomingUnusable()V

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_2

    .line 40
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {p1, v1, v2}, Lcom/android/server/backup/transport/TransportConnection;->setStateLocked(ILcom/android/server/backup/transport/BackupTransportClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :try_start_1
    iget-object v1, p1, Lcom/android/server/backup/transport/TransportConnection;->mContext:Landroid/content/Context;

    .line 47
    iget-object v2, p1, Lcom/android/server/backup/transport/TransportConnection;->mConnection:Landroid/content/ServiceConnection;

    .line 49
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    goto :goto_1

    .line 53
    :catch_0
    move-exception v1

    .line 54
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 70
    const/4 v1, 0x5

    .line 71
    invoke-virtual {p1, v1, p0}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;)V

    .line 74
    :goto_1
    monitor-exit v0

    .line 75
    return-void

    .line 76
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    throw p0
.end method

.method public final referenceLost(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "TransportConnection"

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    const-string p0, " called but TransportClient reference has been GC\'ed"

    .line 10
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 14
    const/4 p1, 0x4

    .line 15
    invoke-static {p1, v0, p0}, Lcom/android/server/backup/transport/TransportUtils;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void

    .line 19
    :catch_0
    move-exception p0

    .line 20
    const-string v1, " called but unbindService failed: "

    .line 22
    invoke-static {p1, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    const/4 p1, 0x5

    .line 38
    invoke-static {p1, v0, p0}, Lcom/android/server/backup/transport/TransportUtils;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method
