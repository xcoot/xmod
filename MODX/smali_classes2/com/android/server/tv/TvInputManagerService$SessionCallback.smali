.class public final Lcom/android/server/tv/TvInputManagerService$SessionCallback;
.super Landroid/media/tv/ITvInputSessionCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mChannels:[Landroid/view/InputChannel;

.field public final mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

.field public final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;[Landroid/view/InputChannel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/tv/ITvInputSessionCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mChannels:[Landroid/view/InputChannel;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final addSessionTokenToClientStateLocked(Landroid/media/tv/ITvInputSession;)Z
    .locals 6

    .line 1
    const-string v0, "TvInputManagerService"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-interface {p1}, Landroid/media/tv/ITvInputSession;->asBinder()Landroid/os/IBinder;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 9
    .line 10
    invoke-interface {p1, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    .line 16
    .line 17
    invoke-interface {p1}, Landroid/media/tv/ITvInputClient;->asBinder()Landroid/os/IBinder;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 24
    .line 25
    iget v3, v3, Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object v3, v2, Lcom/android/server/tv/TvInputManagerService$UserState;->clientStateMap:Ljava/util/Map;

    .line 32
    .line 33
    check-cast v3, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lcom/android/server/tv/TvInputManagerService$ClientState;

    .line 40
    .line 41
    if-nez v3, :cond_0

    .line 42
    .line 43
    new-instance v3, Lcom/android/server/tv/TvInputManagerService$ClientState;

    .line 44
    .line 45
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 46
    .line 47
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 48
    .line 49
    iget v5, v5, Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I

    .line 50
    .line 51
    invoke-direct {v3, v4, p1, v5}, Lcom/android/server/tv/TvInputManagerService$ClientState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;I)V

    .line 52
    .line 53
    .line 54
    :try_start_1
    invoke-interface {p1, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    .line 56
    .line 57
    iget-object v0, v2, Lcom/android/server/tv/TvInputManagerService$UserState;->clientStateMap:Ljava/util/Map;

    .line 58
    .line 59
    check-cast v0, Ljava/util/HashMap;

    .line 60
    .line 61
    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception p0

    .line 66
    const-string p1, "client process has already died"

    .line 67
    .line 68
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .line 70
    .line 71
    return v1

    .line 72
    :cond_0
    :goto_0
    iget-object p1, v3, Lcom/android/server/tv/TvInputManagerService$ClientState;->sessionTokens:Ljava/util/List;

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;

    .line 77
    .line 78
    check-cast p1, Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    const/4 p0, 0x1

    .line 84
    return p0

    .line 85
    :catch_1
    move-exception p0

    .line 86
    const-string/jumbo p1, "session process has already died"

    .line 87
    .line 88
    .line 89
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .line 91
    .line 92
    return v1
.end method

.method public final onAdBufferConsumed(Landroid/media/tv/AdBuffer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 9
    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    .line 18
    .line 19
    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onAdBufferConsumed(Landroid/media/tv/AdBuffer;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    :try_start_2
    invoke-virtual {p1}, Landroid/media/tv/AdBuffer;->getSharedMemory()Landroid/os/SharedMemory;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    :goto_0
    invoke-virtual {p0}, Landroid/os/SharedMemory;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_4

    .line 34
    :catchall_1
    move-exception p0

    .line 35
    goto :goto_2

    .line 36
    :catch_0
    move-exception p0

    .line 37
    :try_start_3
    const-string v1, "TvInputManagerService"

    .line 38
    .line 39
    const-string v2, "error in onAdBufferConsumed"

    .line 40
    .line 41
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 42
    .line 43
    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    :try_start_4
    invoke-virtual {p1}, Landroid/media/tv/AdBuffer;->getSharedMemory()Landroid/os/SharedMemory;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    :goto_1
    monitor-exit v0

    .line 52
    return-void

    .line 53
    :goto_2
    if-eqz p1, :cond_2

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/media/tv/AdBuffer;->getSharedMemory()Landroid/os/SharedMemory;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Landroid/os/SharedMemory;->close()V

    .line 60
    .line 61
    .line 62
    :cond_2
    throw p0

    .line 63
    :cond_3
    :goto_3
    monitor-exit v0

    .line 64
    return-void

    .line 65
    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 66
    throw p0
.end method

.method public final onAdResponse(Landroid/media/tv/AdResponse;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    .line 18
    .line 19
    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onAdResponse(Landroid/media/tv/AdResponse;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_2

    .line 25
    :catch_0
    move-exception p0

    .line 26
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 27
    .line 28
    const-string v1, "error in onAdResponse"

    .line 29
    .line 30
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :cond_1
    :goto_1
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw p0
.end method

.method public final onAitInfoUpdated(Landroid/media/tv/AitInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    .line 18
    .line 19
    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onAitInfoUpdated(Landroid/media/tv/AitInfo;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_2

    .line 25
    :catch_0
    move-exception p0

    .line 26
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 27
    .line 28
    const-string v1, "error in onAitInfoUpdated"

    .line 29
    .line 30
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :cond_1
    :goto_1
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw p0
.end method

.method public final onAudioPresentationSelected(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    .line 18
    .line 19
    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/ITvInputClient;->onAudioPresentationSelected(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_2

    .line 25
    :catch_0
    move-exception p0

    .line 26
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 27
    .line 28
    const-string p2, "error in onAudioPresentationSelected"

    .line 29
    .line 30
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :cond_1
    :goto_1
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw p0
.end method

.method public final onAudioPresentationsChanged(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    .line 18
    .line 19
    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onAudioPresentationsChanged(Ljava/util/List;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_2

    .line 25
    :catch_0
    move-exception p0

    .line 26
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 27
    .line 28
    const-string v1, "error in onAudioPresentationsChanged"

    .line 29
    .line 30
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :cond_1
    :goto_1
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw p0
.end method

.method public final onAvailableSpeeds([F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    .line 18
    .line 19
    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onAvailableSpeeds([FI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_2

    .line 25
    :catch_0
    move-exception p0

    .line 26
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 27
    .line 28
    const-string v1, "error in onAvailableSpeeds"

    .line 29
    .line 30
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :cond_1
    :goto_1
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw p0
.end method

.method public final onBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    .line 18
    .line 19
    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_2

    .line 25
    :catch_0
    move-exception p0

    .line 26
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 27
    .line 28
    const-string v1, "error in onBroadcastInfoResponse"

    .line 29
    .line 30
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :cond_1
    :goto_1
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw p0
.end method

.method public final onChannelRetuned(Landroid/net/Uri;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 7
    .line 8
    iget-object v2, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 9
    .line 10
    if-eqz v2, :cond_4

    .line 11
    .line 12
    iget-object v2, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_1
    iget v1, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    .line 18
    .line 19
    invoke-interface {v2, p1, v1}, Landroid/media/tv/ITvInputClient;->onChannelRetuned(Landroid/net/Uri;I)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 23
    .line 24
    iget-boolean v2, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->isCurrent:Z

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    iget-object v1, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->currentChannel:Landroid/net/Uri;

    .line 29
    .line 30
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_3

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_4

    .line 39
    :catch_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 44
    .line 45
    iget v2, v2, Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 52
    .line 53
    const/4 v3, 0x1

    .line 54
    iput-boolean v3, v2, Lcom/android/server/tv/TvInputManagerService$SessionState;->isCurrent:Z

    .line 55
    .line 56
    iput-object p1, v2, Lcom/android/server/tv/TvInputManagerService$SessionState;->currentChannel:Landroid/net/Uri;

    .line 57
    .line 58
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 59
    .line 60
    invoke-virtual {p1, v1}, Lcom/android/server/tv/TvInputManagerService;->notifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 64
    .line 65
    iget-boolean v1, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->isRecordingSession:Z

    .line 66
    .line 67
    if-nez v1, :cond_3

    .line 68
    .line 69
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 70
    .line 71
    invoke-static {v1, p1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mgetSessionActualInputId(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 76
    .line 77
    iget-object v1, v1, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_2

    .line 84
    .line 85
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 86
    .line 87
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 88
    .line 89
    invoke-virtual {v1, v3, p1, v2}, Lcom/android/server/tv/TvInputManagerService;->logExternalInputEvent(ILjava/lang/String;Lcom/android/server/tv/TvInputManagerService$SessionState;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 93
    .line 94
    iput-object p1, v1, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    .line 95
    .line 96
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 97
    .line 98
    iput-object p0, v1, Lcom/android/server/tv/TvInputManagerService;->mOnScreenSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :goto_1
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 102
    .line 103
    const-string v1, "error in onChannelRetuned"

    .line 104
    .line 105
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    .line 107
    .line 108
    :cond_3
    :goto_2
    monitor-exit v0

    .line 109
    return-void

    .line 110
    :cond_4
    :goto_3
    monitor-exit v0

    .line 111
    return-void

    .line 112
    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    throw p0
.end method

.method public final onContentAllowed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    .line 18
    .line 19
    invoke-interface {v1, p0}, Landroid/media/tv/ITvInputClient;->onContentAllowed(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_2

    .line 25
    :catch_0
    move-exception p0

    .line 26
    :try_start_2
    const-string v1, "TvInputManagerService"

    .line 27
    .line 28
    const-string v2, "error in onContentAllowed"

    .line 29
    .line 30
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :cond_1
    :goto_1
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw p0
.end method

.method public final onContentBlocked(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    .line 18
    .line 19
    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onContentBlocked(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_2

    .line 25
    :catch_0
    move-exception p0

    .line 26
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 27
    .line 28
    const-string v1, "error in onContentBlocked"

    .line 29
    .line 30
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :cond_1
    :goto_1
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw p0
.end method

.method public final onCueingMessageAvailability(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    .line 18
    .line 19
    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onCueingMessageAvailability(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_2

    .line 25
    :catch_0
    move-exception p0

    .line 26
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 27
    .line 28
    const-string v1, "error in onCueingMessageAvailability"

    .line 29
    .line 30
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :cond_1
    :goto_1
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw p0
.end method

.method public final onError(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    .line 18
    .line 19
    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onError(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_2

    .line 25
    :catch_0
    move-exception p0

    .line 26
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 27
    .line 28
    const-string v1, "error in onError"

    .line 29
    .line 30
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :cond_1
    :goto_1
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw p0
.end method

.method public final onLayoutSurface(IIII)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :try_start_1
    iget v7, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    .line 18
    .line 19
    move v3, p1

    .line 20
    move v4, p2

    .line 21
    move v5, p3

    .line 22
    move v6, p4

    .line 23
    invoke-interface/range {v2 .. v7}, Landroid/media/tv/ITvInputClient;->onLayoutSurface(IIIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_2

    .line 29
    :catch_0
    move-exception p0

    .line 30
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 31
    .line 32
    const-string p2, "error in onLayoutSurface"

    .line 33
    .line 34
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    .line 36
    .line 37
    :goto_0
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :cond_1
    :goto_1
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    throw p0
.end method

.method public final onRecordingStopped(Landroid/net/Uri;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    .line 18
    .line 19
    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onRecordingStopped(Landroid/net/Uri;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_2

    .line 25
    :catch_0
    move-exception p0

    .line 26
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 27
    .line 28
    const-string v1, "error in onRecordingStopped"

    .line 29
    .line 30
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :cond_1
    :goto_1
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw p0
.end method

.method public final onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 7
    .line 8
    iput-object p1, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 9
    .line 10
    iput-object p2, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->addSessionTokenToClientStateLocked(Landroid/media/tv/ITvInputSession;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 24
    .line 25
    iget-object v2, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    .line 26
    .line 27
    iget-object v3, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v4, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;

    .line 30
    .line 31
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mChannels:[Landroid/view/InputChannel;

    .line 32
    .line 33
    aget-object v5, v5, p2

    .line 34
    .line 35
    iget v1, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {v2, v3, v4, v5, v1}, Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 49
    .line 50
    iget-object v2, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;

    .line 51
    .line 52
    iget v1, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I

    .line 53
    .line 54
    invoke-virtual {p1, v1, v2}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(ILandroid/os/IBinder;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 60
    .line 61
    iget-object v2, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    .line 62
    .line 63
    iget-object v3, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    .line 64
    .line 65
    iget v1, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    const/4 p1, 0x0

    .line 71
    invoke-static {v2, v3, p1, p1, v1}, Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 72
    .line 73
    .line 74
    :goto_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mChannels:[Landroid/view/InputChannel;

    .line 75
    .line 76
    aget-object p0, p0, p2

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    .line 79
    .line 80
    .line 81
    monitor-exit v0

    .line 82
    return-void

    .line 83
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    throw p0
.end method

.method public final onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    .line 18
    .line 19
    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/ITvInputClient;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_2

    .line 25
    :catch_0
    move-exception p0

    .line 26
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 27
    .line 28
    const-string p2, "error in onSessionEvent"

    .line 29
    .line 30
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :cond_1
    :goto_1
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw p0
.end method

.method public final onSignalStrength(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    .line 18
    .line 19
    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onSignalStrength(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_2

    .line 25
    :catch_0
    move-exception p0

    .line 26
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 27
    .line 28
    const-string v1, "error in onSignalStrength"

    .line 29
    .line 30
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :cond_1
    :goto_1
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw p0
.end method

.method public final onTimeShiftCurrentPositionChanged(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    .line 18
    .line 19
    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/ITvInputClient;->onTimeShiftCurrentPositionChanged(JI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_2

    .line 25
    :catch_0
    move-exception p0

    .line 26
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 27
    .line 28
    const-string p2, "error in onTimeShiftCurrentPositionChanged"

    .line 29
    .line 30
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :cond_1
    :goto_1
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw p0
.end method

.method public final onTimeShiftMode(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    .line 18
    .line 19
    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onTimeShiftMode(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_2

    .line 25
    :catch_0
    move-exception p0

    .line 26
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 27
    .line 28
    const-string v1, "error in onTimeShiftMode"

    .line 29
    .line 30
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :cond_1
    :goto_1
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw p0
.end method

.method public final onTimeShiftStartPositionChanged(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    .line 18
    .line 19
    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/ITvInputClient;->onTimeShiftStartPositionChanged(JI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_2

    .line 25
    :catch_0
    move-exception p0

    .line 26
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 27
    .line 28
    const-string p2, "error in onTimeShiftStartPositionChanged"

    .line 29
    .line 30
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :cond_1
    :goto_1
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw p0
.end method

.method public final onTimeShiftStatusChanged(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    .line 18
    .line 19
    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onTimeShiftStatusChanged(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_2

    .line 25
    :catch_0
    move-exception p0

    .line 26
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 27
    .line 28
    const-string v1, "error in onTimeShiftStatusChanged"

    .line 29
    .line 30
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :cond_1
    :goto_1
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw p0
.end method

.method public final onTrackSelected(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    .line 18
    .line 19
    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/ITvInputClient;->onTrackSelected(ILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_2

    .line 25
    :catch_0
    move-exception p0

    .line 26
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 27
    .line 28
    const-string p2, "error in onTrackSelected"

    .line 29
    .line 30
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :cond_1
    :goto_1
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw p0
.end method

.method public final onTracksChanged(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    .line 18
    .line 19
    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onTracksChanged(Ljava/util/List;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_2

    .line 25
    :catch_0
    move-exception p0

    .line 26
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 27
    .line 28
    const-string v1, "error in onTracksChanged"

    .line 29
    .line 30
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :cond_1
    :goto_1
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw p0
.end method

.method public final onTuned(Landroid/net/Uri;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    .line 18
    .line 19
    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onTuned(Landroid/net/Uri;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_2

    .line 25
    :catch_0
    move-exception p0

    .line 26
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 27
    .line 28
    const-string v1, "error in onTuned"

    .line 29
    .line 30
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :cond_1
    :goto_1
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw p0
.end method

.method public final onTvInputSessionData(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    .line 18
    .line 19
    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/ITvInputClient;->onTvInputSessionData(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_2

    .line 25
    :catch_0
    move-exception p0

    .line 26
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 27
    .line 28
    const-string p2, "error in onTvInputSessionData"

    .line 29
    .line 30
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :cond_1
    :goto_1
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw p0
.end method

.method public final onTvMessage(ILandroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    .line 18
    .line 19
    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/ITvInputClient;->onTvMessage(ILandroid/os/Bundle;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_2

    .line 25
    :catch_0
    move-exception p0

    .line 26
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 27
    .line 28
    const-string p2, "error in onTvMessage"

    .line 29
    .line 30
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :cond_1
    :goto_1
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw p0
.end method

.method public final onVideoAvailable()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 7
    .line 8
    iget-object v2, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 9
    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    iget-object v2, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 18
    .line 19
    iget v3, v2, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v1, v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$smgetTvInputState(Lcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 26
    .line 27
    .line 28
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :try_start_1
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 30
    .line 31
    iget-object v3, v2, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    .line 32
    .line 33
    iget v2, v2, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    .line 34
    .line 35
    invoke-interface {v3, v2}, Landroid/media/tv/ITvInputClient;->onVideoAvailable(I)V

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 41
    .line 42
    const/4 v3, 0x6

    .line 43
    invoke-static {v2, v3, p0, v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mlogTuneStateChanged(Lcom/android/server/tv/TvInputManagerService;ILcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$TvInputState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_2

    .line 49
    :catch_0
    move-exception p0

    .line 50
    :try_start_2
    const-string v1, "TvInputManagerService"

    .line 51
    .line 52
    const-string v2, "error in onVideoAvailable"

    .line 53
    .line 54
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .line 56
    .line 57
    :goto_0
    monitor-exit v0

    .line 58
    return-void

    .line 59
    :cond_1
    :goto_1
    monitor-exit v0

    .line 60
    return-void

    .line 61
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    throw p0
.end method

.method public final onVideoFreezeUpdated(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :try_start_1
    iget p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    .line 18
    .line 19
    invoke-interface {v1, p1, p0}, Landroid/media/tv/ITvInputClient;->onVideoFreezeUpdated(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_2

    .line 25
    :catch_0
    move-exception p0

    .line 26
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 27
    .line 28
    const-string v1, "error in onVideoFreezeUpdated"

    .line 29
    .line 30
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :cond_1
    :goto_1
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw p0
.end method

.method public final onVideoUnavailable(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 7
    .line 8
    iget-object v2, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 9
    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    iget-object v2, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 18
    .line 19
    iget v3, v2, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v1, v2}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$smgetTvInputState(Lcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 26
    .line 27
    .line 28
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :try_start_1
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 30
    .line 31
    iget-object v3, v2, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    .line 32
    .line 33
    iget v2, v2, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    .line 34
    .line 35
    invoke-interface {v3, p1, v2}, Landroid/media/tv/ITvInputClient;->onVideoUnavailable(II)V

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService;->getVideoUnavailableReasonForStatsd(I)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionCallback;->mSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 45
    .line 46
    invoke-static {v2, p1, p0, v1}, Lcom/android/server/tv/TvInputManagerService;->-$$Nest$mlogTuneStateChanged(Lcom/android/server/tv/TvInputManagerService;ILcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$TvInputState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_2

    .line 52
    :catch_0
    move-exception p0

    .line 53
    :try_start_2
    const-string p1, "TvInputManagerService"

    .line 54
    .line 55
    const-string v1, "error in onVideoUnavailable"

    .line 56
    .line 57
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    .line 59
    .line 60
    :goto_0
    monitor-exit v0

    .line 61
    return-void

    .line 62
    :cond_1
    :goto_1
    monitor-exit v0

    .line 63
    return-void

    .line 64
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    throw p0
.end method
