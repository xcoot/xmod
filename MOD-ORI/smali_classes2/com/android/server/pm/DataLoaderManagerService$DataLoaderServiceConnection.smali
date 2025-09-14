.class public final Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mDataLoader:Landroid/content/pm/IDataLoader;

.field public final mId:I

.field public final mListener:Landroid/content/pm/IDataLoaderStatusListener;

.field public final synthetic this$0:Lcom/android/server/pm/DataLoaderManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/DataLoaderManagerService;ILandroid/content/pm/IDataLoaderStatusListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mId:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mListener:Landroid/content/pm/IDataLoaderStatusListener;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mDataLoader:Landroid/content/pm/IDataLoader;

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    :try_start_0
    invoke-interface {p3, p2, p0}, Landroid/content/pm/IDataLoaderStatusListener;->onStatusChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DataLoader "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mId:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " died"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "DataLoaderManager"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->unbind()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mListener:Landroid/content/pm/IDataLoaderStatusListener;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    :try_start_0
    iget p0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mId:I

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-interface {v0, p0, v1}, Landroid/content/pm/IDataLoaderStatusListener;->onStatusChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    :catch_0
    :cond_0
    return-void
.end method

.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "DataLoader "

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mId:I

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v0, " died"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "DataLoaderManager"

    .line 23
    .line 24
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->unbind()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mListener:Landroid/content/pm/IDataLoaderStatusListener;

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    :try_start_0
    iget p0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mId:I

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-interface {p1, p0, v0}, Landroid/content/pm/IDataLoaderStatusListener;->onStatusChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    :catch_0
    :cond_0
    return-void
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "DataLoader "

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mId:I

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v0, " failed to start"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "DataLoaderManager"

    .line 23
    .line 24
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->unbind()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mListener:Landroid/content/pm/IDataLoaderStatusListener;

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    :try_start_0
    iget p0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mId:I

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-interface {p1, p0, v0}, Landroid/content/pm/IDataLoaderStatusListener;->onStatusChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    :catch_0
    :cond_0
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    invoke-static {p2}, Landroid/content/pm/IDataLoader$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IDataLoader;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mDataLoader:Landroid/content/pm/IDataLoader;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->onNullBinding(Landroid/content/ComponentName;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/pm/DataLoaderManagerService;->mServiceConnections:Landroid/util/SparseArray;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/server/pm/DataLoaderManagerService;->mServiceConnections:Landroid/util/SparseArray;

    .line 21
    .line 22
    iget v2, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mId:I

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;

    .line 29
    .line 30
    if-ne v1, p0, :cond_1

    .line 31
    .line 32
    monitor-exit v0

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    if-eqz v1, :cond_2

    .line 37
    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    iget-object p1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/android/server/pm/DataLoaderManagerService;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/android/server/pm/DataLoaderManagerService;->mServiceConnections:Landroid/util/SparseArray;

    .line 50
    .line 51
    iget v2, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mId:I

    .line 52
    .line 53
    invoke-virtual {v1, v2, p0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :goto_0
    const/4 v0, 0x0

    .line 58
    :try_start_2
    invoke-interface {p2, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mListener:Landroid/content/pm/IDataLoaderStatusListener;

    .line 62
    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    :try_start_3
    iget p0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mId:I

    .line 66
    .line 67
    const/4 p2, 0x2

    .line 68
    invoke-interface {p1, p0, p2}, Landroid/content/pm/IDataLoaderStatusListener;->onStatusChanged(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 69
    .line 70
    .line 71
    :catch_0
    :cond_3
    return-void

    .line 72
    :catch_1
    move-exception p2

    .line 73
    const-string v0, "DataLoaderManager"

    .line 74
    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v2, "Failed to link to DataLoader\'s death: "

    .line 78
    .line 79
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget v2, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mId:I

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {v0, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->onBindingDied(Landroid/content/ComponentName;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :goto_1
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 99
    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "DataLoader "

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mId:I

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v0, " disconnected, but will try to recover"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "DataLoaderManager"

    .line 23
    .line 24
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->unbind()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mListener:Landroid/content/pm/IDataLoaderStatusListener;

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    :try_start_0
    iget p0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mId:I

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-interface {p1, p0, v0}, Landroid/content/pm/IDataLoaderStatusListener;->onStatusChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    :catch_0
    :cond_0
    return-void
.end method

.method public final unbind()Z
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/DataLoaderManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    iget-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/pm/DataLoaderManagerService;->mServiceConnections:Landroid/util/SparseArray;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/server/pm/DataLoaderManagerService;->mServiceConnections:Landroid/util/SparseArray;

    .line 16
    .line 17
    iget v2, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mId:I

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-ne v1, p0, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/android/server/pm/DataLoaderManagerService;->mServiceConnections:Landroid/util/SparseArray;

    .line 28
    .line 29
    iget p0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mId:I

    .line 30
    .line 31
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 32
    .line 33
    .line 34
    monitor-exit v0

    .line 35
    const/4 p0, 0x1

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    monitor-exit v0

    .line 40
    const/4 p0, 0x0

    .line 41
    :goto_0
    return p0

    .line 42
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw p0
.end method
