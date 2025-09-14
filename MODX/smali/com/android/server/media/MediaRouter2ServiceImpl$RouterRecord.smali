.class public final Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

.field public final mHasBluetoothRoutingPermission:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mHasConfigureWifiDisplayPermission:Z

.field public final mHasMediaContentControlPermission:Z

.field public final mHasMediaRoutingControl:Z

.field public final mHasModifyAudioRoutingPermission:Z

.field public final mPackageName:Ljava/lang/String;

.field public final mPid:I

.field public mRouteListingPreference:Landroid/media/RouteListingPreference;

.field public final mRouter:Landroid/media/IMediaRouter2;

.field public final mRouterId:I

.field public mScanningState:I

.field public final mSelectRouteSequenceNumbers:Ljava/util/List;

.field public final mUid:I

.field public final mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

.field public final synthetic this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouter2ServiceImpl;Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;Landroid/media/IMediaRouter2;IILjava/lang/String;ZZZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mScanningState:I

    .line 9
    iput-object p2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 11
    iput-object p6, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    .line 13
    new-instance p2, Ljava/util/ArrayList;

    .line 15
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iput-object p2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mSelectRouteSequenceNumbers:Ljava/util/List;

    .line 20
    sget-object p2, Landroid/media/RouteDiscoveryPreference;->EMPTY:Landroid/media/RouteDiscoveryPreference;

    .line 22
    iput-object p2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 24
    iput-object p3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    .line 26
    iput p4, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUid:I

    .line 28
    iput p5, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPid:I

    .line 30
    iput-boolean p7, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mHasConfigureWifiDisplayPermission:Z

    .line 32
    iput-boolean p8, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mHasModifyAudioRoutingPermission:Z

    .line 34
    iput-boolean p9, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mHasMediaContentControlPermission:Z

    .line 36
    iput-boolean p10, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mHasMediaRoutingControl:Z

    .line 38
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    invoke-virtual {p1, p5, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->checkCallerHasBluetoothPermissions(II)Z

    .line 43
    move-result p3

    .line 44
    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 47
    iput-object p2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mHasBluetoothRoutingPermission:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    iget-object p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl;->mNextRouterOrManagerId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 54
    move-result p1

    .line 55
    iput p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouterId:I

    .line 57
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 3
    iget-object v1, v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, p0, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->unregisterRouter2Locked(Landroid/media/IMediaRouter2;Z)V

    .line 12
    monitor-exit v1

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public final getVisibleRoutes(Ljava/util/List;)Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/media/MediaRoute2Info;

    .line 22
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    .line 24
    invoke-virtual {v1, v2}, Landroid/media/MediaRoute2Info;->isVisibleTo(Ljava/lang/String;)Z

    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-object v0
.end method

.method public final hasSystemRoutingPermission()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mHasModifyAudioRoutingPermission:Z

    .line 3
    if-nez v0, :cond_1

    .line 5
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mHasBluetoothRoutingPermission:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    return p0
.end method

.method public final maybeClearTransferInitiatorIdentity(Landroid/media/RoutingSessionInfo;)Landroid/media/RoutingSessionInfo;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getTransferInitiatorUserHandle()Landroid/os/UserHandle;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getTransferInitiatorPackageName()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 11
    iget v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mUserId:I

    .line 13
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 16
    move-result-object v2

    .line 17
    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 23
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    .line 25
    invoke-static {p0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    move-result p0

    .line 29
    if-nez p0, :cond_0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-object p1

    .line 33
    :cond_1
    :goto_0
    new-instance p0, Landroid/media/RoutingSessionInfo$Builder;

    .line 35
    invoke-direct {p0, p1}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Landroid/media/RoutingSessionInfo;)V

    .line 38
    const/4 p1, 0x0

    .line 39
    invoke-virtual {p0, p1, p1}, Landroid/media/RoutingSessionInfo$Builder;->setTransferInitiator(Landroid/os/UserHandle;Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo$Builder;->build()Landroid/media/RoutingSessionInfo;

    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method

.method public final maybeUpdateSystemRoutingPermissionLocked()V
    .locals 6

    .line 1
    const-string v0, "MR2ServiceImpl"

    .line 3
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->hasSystemRoutingPermission()Z

    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mHasBluetoothRoutingPermission:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    iget-object v3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 11
    iget v4, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPid:I

    .line 13
    iget v5, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUid:I

    .line 15
    invoke-virtual {v3, v4, v5}, Lcom/android/server/media/MediaRouter2ServiceImpl;->checkCallerHasBluetoothPermissions(II)Z

    .line 18
    move-result v3

    .line 19
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 22
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->hasSystemRoutingPermission()Z

    .line 25
    move-result v2

    .line 26
    if-eq v1, v2, :cond_2

    .line 28
    if-eqz v2, :cond_0

    .line 30
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 32
    iget-object v1, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 34
    iget-object v1, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastNotifiedRoutesToPrivilegedRouters:Ljava/util/Map;

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 39
    iget-object v1, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 41
    iget-object v1, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastNotifiedRoutesToNonPrivilegedRouters:Ljava/util/Map;

    .line 43
    :goto_0
    check-cast v1, Landroid/util/ArrayMap;

    .line 45
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 48
    move-result-object v1

    .line 49
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    .line 56
    move-result-object v1

    .line 57
    :try_start_0
    iget-object v3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    .line 59
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->getVisibleRoutes(Ljava/util/List;)Ljava/util/List;

    .line 62
    move-result-object v1

    .line 63
    invoke-interface {v3, v1}, Landroid/media/IMediaRouter2;->notifyRoutesUpdated(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    goto :goto_1

    .line 67
    :catch_0
    move-exception v1

    .line 68
    const-string v3, "Failed to notify routes updated. Router probably died."

    .line 70
    invoke-static {v0, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    :goto_1
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 75
    iget-object v1, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 77
    iget-object v1, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 79
    invoke-virtual {v1}, Lcom/android/server/media/MediaRoute2Provider;->getSessionInfos()Ljava/util/List;

    .line 82
    move-result-object v1

    .line 83
    if-eqz v2, :cond_1

    .line 85
    check-cast v1, Ljava/util/ArrayList;

    .line 87
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 90
    move-result v2

    .line 91
    if-nez v2, :cond_1

    .line 93
    const/4 v2, 0x0

    .line 94
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Landroid/media/RoutingSessionInfo;

    .line 100
    goto :goto_2

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 103
    iget-object v1, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 105
    iget-object v1, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 107
    iget-object v1, v1, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultSessionInfo:Landroid/media/RoutingSessionInfo;

    .line 109
    :goto_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    .line 111
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->maybeClearTransferInitiatorIdentity(Landroid/media/RoutingSessionInfo;)Landroid/media/RoutingSessionInfo;

    .line 114
    move-result-object p0

    .line 115
    invoke-interface {v2, p0}, Landroid/media/IMediaRouter2;->notifySessionInfoChanged(Landroid/media/RoutingSessionInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 118
    goto :goto_3

    .line 119
    :catch_1
    move-exception p0

    .line 120
    const-string v1, "Failed to notify session info changed. Router probably died."

    .line 122
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    :cond_2
    :goto_3
    return-void
.end method
