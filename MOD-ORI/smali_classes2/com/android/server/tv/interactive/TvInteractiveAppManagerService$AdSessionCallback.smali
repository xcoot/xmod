.class public final Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;
.super Landroid/media/tv/ad/ITvAdSessionCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mInputChannels:[Landroid/view/InputChannel;

.field public final mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

.field public final synthetic this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;[Landroid/view/InputChannel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/tv/ad/ITvAdSessionCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mInputChannels:[Landroid/view/InputChannel;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final addAdSessionTokenToClientStateLocked(Landroid/media/tv/ad/ITvAdSession;)Z
    .locals 6

    .line 1
    const-string v0, "TvInteractiveAppManagerService"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-interface {p1}, Landroid/media/tv/ad/ITvAdSession;->asBinder()Landroid/os/IBinder;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    .line 9
    .line 10
    invoke-interface {p1, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mClient:Landroid/media/tv/ad/ITvAdClient;

    .line 16
    .line 17
    invoke-interface {p1}, Landroid/media/tv/ad/ITvAdClient;->asBinder()Landroid/os/IBinder;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    .line 24
    .line 25
    iget v3, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mUserId:I

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object v3, v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mClientStateMap:Ljava/util/Map;

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
    check-cast v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;

    .line 40
    .line 41
    if-nez v3, :cond_0

    .line 42
    .line 43
    new-instance v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;

    .line 44
    .line 45
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 46
    .line 47
    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    .line 48
    .line 49
    iget v5, v5, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mUserId:I

    .line 50
    .line 51
    invoke-direct {v3, v4, p1, v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;I)V

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
    iget-object v0, v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mClientStateMap:Ljava/util/Map;

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
    invoke-static {v0, p1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .line 70
    .line 71
    return v1

    .line 72
    :cond_0
    :goto_0
    iget-object p1, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mSessionTokens:Ljava/util/List;

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSessionToken:Landroid/os/IBinder;

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
    invoke-static {v0, p1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .line 91
    .line 92
    return v1
.end method

.method public final onLayoutSurface(IIII)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSession:Landroid/media/tv/ad/ITvAdSession;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mClient:Landroid/media/tv/ad/ITvAdClient;
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
    iget v7, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSeq:I

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
    invoke-interface/range {v2 .. v7}, Landroid/media/tv/ad/ITvAdClient;->onLayoutSurface(IIIII)V
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
    const-string p1, "TvInteractiveAppManagerService"

    .line 31
    .line 32
    const-string p2, "error in onLayoutSurface"

    .line 33
    .line 34
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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

.method public final onRequestCurrentChannelUri()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSession:Landroid/media/tv/ad/ITvAdSession;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mClient:Landroid/media/tv/ad/ITvAdClient;
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
    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSeq:I

    .line 18
    .line 19
    invoke-interface {v1, p0}, Landroid/media/tv/ad/ITvAdClient;->onRequestCurrentChannelUri(I)V
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
    const-string v1, "TvInteractiveAppManagerService"

    .line 27
    .line 28
    const-string v2, "error in onRequestCurrentChannelUri"

    .line 29
    .line 30
    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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

.method public final onRequestCurrentTvInputId()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSession:Landroid/media/tv/ad/ITvAdSession;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mClient:Landroid/media/tv/ad/ITvAdClient;
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
    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSeq:I

    .line 18
    .line 19
    invoke-interface {v1, p0}, Landroid/media/tv/ad/ITvAdClient;->onRequestCurrentTvInputId(I)V
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
    const-string v1, "TvInteractiveAppManagerService"

    .line 27
    .line 28
    const-string v2, "error in onRequestCurrentTvInputId"

    .line 29
    .line 30
    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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

.method public final onRequestCurrentVideoBounds()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSession:Landroid/media/tv/ad/ITvAdSession;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mClient:Landroid/media/tv/ad/ITvAdClient;
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
    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSeq:I

    .line 18
    .line 19
    invoke-interface {v1, p0}, Landroid/media/tv/ad/ITvAdClient;->onRequestCurrentVideoBounds(I)V
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
    const-string v1, "TvInteractiveAppManagerService"

    .line 27
    .line 28
    const-string v2, "error in onRequestCurrentVideoBounds"

    .line 29
    .line 30
    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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

.method public final onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSession:Landroid/media/tv/ad/ITvAdSession;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mClient:Landroid/media/tv/ad/ITvAdClient;
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
    iget v7, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSeq:I

    .line 18
    .line 19
    move-object v3, p1

    .line 20
    move-object v4, p2

    .line 21
    move-object v5, p3

    .line 22
    move-object v6, p4

    .line 23
    invoke-interface/range {v2 .. v7}, Landroid/media/tv/ad/ITvAdClient;->onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)V
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
    const-string p1, "TvInteractiveAppManagerService"

    .line 31
    .line 32
    const-string p2, "error in onRequestSigning"

    .line 33
    .line 34
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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

.method public final onRequestTrackInfoList()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSession:Landroid/media/tv/ad/ITvAdSession;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mClient:Landroid/media/tv/ad/ITvAdClient;
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
    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSeq:I

    .line 18
    .line 19
    invoke-interface {v1, p0}, Landroid/media/tv/ad/ITvAdClient;->onRequestTrackInfoList(I)V
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
    const-string v1, "TvInteractiveAppManagerService"

    .line 27
    .line 28
    const-string v2, "error in onRequestTrackInfoList"

    .line 29
    .line 30
    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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

.method public final onSessionCreated(Landroid/media/tv/ad/ITvAdSession;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    .line 7
    .line 8
    iput-object p1, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSession:Landroid/media/tv/ad/ITvAdSession;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->addAdSessionTokenToClientStateLocked(Landroid/media/tv/ad/ITvAdSession;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    .line 22
    .line 23
    iget-object v3, v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mClient:Landroid/media/tv/ad/ITvAdClient;

    .line 24
    .line 25
    iget-object v4, v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mAdServiceId:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v5, v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSessionToken:Landroid/os/IBinder;

    .line 28
    .line 29
    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mInputChannels:[Landroid/view/InputChannel;

    .line 30
    .line 31
    aget-object v6, v6, v1

    .line 32
    .line 33
    iget v2, v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSeq:I

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static {v3, v4, v5, v6, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->sendAdSessionTokenToClientLocked(Landroid/media/tv/ad/ITvAdClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    .line 47
    .line 48
    iget-object v3, v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSessionToken:Landroid/os/IBinder;

    .line 49
    .line 50
    iget v2, v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mUserId:I

    .line 51
    .line 52
    invoke-virtual {p1, v2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->removeAdSessionStateLocked(ILandroid/os/IBinder;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 56
    .line 57
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    .line 58
    .line 59
    iget-object v3, v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mClient:Landroid/media/tv/ad/ITvAdClient;

    .line 60
    .line 61
    iget-object v4, v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mAdServiceId:Ljava/lang/String;

    .line 62
    .line 63
    iget v2, v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSeq:I

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    const/4 p1, 0x0

    .line 69
    invoke-static {v3, v4, p1, p1, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->sendAdSessionTokenToClientLocked(Landroid/media/tv/ad/ITvAdClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 70
    .line 71
    .line 72
    :goto_0
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mInputChannels:[Landroid/view/InputChannel;

    .line 73
    .line 74
    aget-object p0, p0, v1

    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    .line 77
    .line 78
    .line 79
    monitor-exit v0

    .line 80
    return-void

    .line 81
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    throw p0
.end method

.method public final onTvAdSessionData(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSession:Landroid/media/tv/ad/ITvAdSession;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mClient:Landroid/media/tv/ad/ITvAdClient;
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
    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSeq:I

    .line 18
    .line 19
    invoke-interface {v1, p1, p2, p0}, Landroid/media/tv/ad/ITvAdClient;->onTvAdSessionData(Ljava/lang/String;Landroid/os/Bundle;I)V
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
    const-string p1, "TvInteractiveAppManagerService"

    .line 27
    .line 28
    const-string p2, "error in onTvAdSessionData"

    .line 29
    .line 30
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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
