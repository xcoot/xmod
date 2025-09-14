.class public final Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/media/MediaRoute2ProviderWatcher$Callback;
.implements Lcom/android/server/media/MediaRoute2Provider$Callback;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mLastNotifiedRoutesToNonPrivilegedRouters:Ljava/util/Map;

.field public final mLastNotifiedRoutesToPrivilegedRouters:Ljava/util/Map;

.field public final mLastProviderInfos:Ljava/util/List;

.field public final mRouteProviders:Ljava/util/ArrayList;

.field public mRunning:Z

.field public final mServiceRef:Ljava/lang/ref/WeakReference;

.field public final mSessionCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mSessionToRouterMap:Ljava/util/Map;

.field public final mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

.field public final mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

.field public final mWatcher:Lcom/android/server/media/MediaRoute2ProviderWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouter2ServiceImpl;Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;Landroid/os/Looper;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, p3, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRouteProviders:Ljava/util/ArrayList;

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iput-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    .line 20
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 25
    iput-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    new-instance v1, Landroid/util/ArrayMap;

    .line 29
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 32
    iput-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    .line 34
    new-instance v1, Landroid/util/ArrayMap;

    .line 36
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 39
    iput-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastNotifiedRoutesToPrivilegedRouters:Ljava/util/Map;

    .line 41
    new-instance v1, Landroid/util/ArrayMap;

    .line 43
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 46
    iput-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastNotifiedRoutesToNonPrivilegedRouters:Ljava/util/Map;

    .line 48
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 50
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 53
    iput-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    .line 55
    iput-object p2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 57
    new-instance v1, Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 59
    iget-object v2, p1, Lcom/android/server/media/MediaRouter2ServiceImpl;->mContext:Landroid/content/Context;

    .line 61
    iget v3, p2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mUserId:I

    .line 63
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 66
    move-result-object v3

    .line 67
    invoke-direct {v1, v2, v3, p3}, Lcom/android/server/media/SystemMediaRoute2Provider;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/Looper;)V

    .line 70
    iput-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 72
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance p3, Lcom/android/server/media/MediaRoute2ProviderWatcher;

    .line 77
    iget-object p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl;->mContext:Landroid/content/Context;

    .line 79
    iget p2, p2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mUserId:I

    .line 81
    invoke-direct {p3, p1, p0, p0, p2}, Lcom/android/server/media/MediaRoute2ProviderWatcher;-><init>(Landroid/content/Context;Lcom/android/server/media/MediaRoute2ProviderWatcher$Callback;Landroid/os/Handler;I)V

    .line 84
    iput-object p3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mWatcher:Lcom/android/server/media/MediaRoute2ProviderWatcher;

    .line 86
    return-void
.end method

.method public static notifyRequestFailedToManager(Landroid/media/IMediaRouter2Manager;II)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/media/IMediaRouter2Manager;->notifyRequestFailed(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception p0

    .line 6
    const-string p1, "MR2ServiceImpl"

    .line 8
    const-string p2, "Failed to notify manager of the request failure. Manager probably died."

    .line 10
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    :goto_0
    return-void
.end method

.method public static notifyRoutesUpdatedToRouterRecords(Ljava/util/List;Ljava/util/List;)V
    .locals 3

    .line 1
    check-cast p0, Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    :try_start_0
    iget-object v1, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    .line 24
    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->getVisibleRoutes(Ljava/util/List;)Ljava/util/List;

    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v1, v0}, Landroid/media/IMediaRouter2;->notifyRoutesUpdated(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    const-string v1, "MR2ServiceImpl"

    .line 35
    const-string v2, "Failed to notify routes updated. Router probably died."

    .line 37
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method

.method public static notifySessionCreationFailedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-interface {p0, p1, v0}, Landroid/media/IMediaRouter2;->notifySessionCreated(ILandroid/media/RoutingSessionInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    const-string p1, "MR2ServiceImpl"

    .line 11
    const-string v0, "Failed to notify router of the session creation failure. Router probably died."

    .line 13
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    :goto_0
    return-void
.end method

.method public static notifySessionInfoChangedToRouters(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 5
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    :try_start_0
    iget-object v1, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    .line 22
    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->maybeClearTransferInitiatorIdentity(Landroid/media/RoutingSessionInfo;)Landroid/media/RoutingSessionInfo;

    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v1, v0}, Landroid/media/IMediaRouter2;->notifySessionInfoChanged(Landroid/media/RoutingSessionInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    const-string v1, "MR2ServiceImpl"

    .line 33
    const-string v2, "Failed to notify session info changed. Router probably died."

    .line 35
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method public static toLoggingMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 4
    move-result-object p2

    .line 5
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda14;

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda14;-><init>(I)V

    .line 11
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 14
    move-result-object p2

    .line 15
    const-string v0, ", "

    .line 17
    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    .line 20
    move-result-object v0

    .line 21
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 24
    move-result-object p2

    .line 25
    check-cast p2, Ljava/lang/String;

    .line 27
    const-string v0, "%s | provider: %s, routes: [%s]"

    .line 29
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    .line 32
    move-result-object p0

    .line 33
    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method


# virtual methods
.method public final checkArgumentsForSessionControl(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-virtual {p3}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "Ignoring "

    .line 11
    const/4 v2, 0x0

    .line 12
    const-string v3, "MR2ServiceImpl"

    .line 14
    if-nez v0, :cond_0

    .line 16
    new-instance p0, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string p1, " route since no provider found for given route="

    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return v2

    .line 40
    :cond_0
    invoke-static {p2}, Landroid/media/MediaRouter2Utils;->getProviderId(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    iget-object v4, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 46
    iget-object v4, v4, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    .line 48
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 51
    move-result v0

    .line 52
    const/4 v4, 0x1

    .line 53
    if-eqz v0, :cond_1

    .line 55
    return v4

    .line 56
    :cond_1
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    .line 58
    check-cast p0, Landroid/util/ArrayMap;

    .line 60
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    move-result-object p0

    .line 64
    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 66
    if-eq p0, p1, :cond_4

    .line 68
    const-string p2, " route from non-matching router. routerRecordPackageName="

    .line 70
    invoke-static {v1, p4, p2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    move-result-object p2

    .line 74
    const-string p4, "<null router record>"

    .line 76
    if-eqz p1, :cond_2

    .line 78
    iget-object p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    move-object p1, p4

    .line 82
    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string p1, " matchingRecordPackageName="

    .line 87
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    if-eqz p0, :cond_3

    .line 92
    iget-object p4, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    .line 94
    :cond_3
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string p0, " route="

    .line 99
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object p0

    .line 109
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return v2

    .line 113
    :cond_4
    invoke-static {p2}, Landroid/media/MediaRouter2Utils;->getOriginalId(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    move-result-object p0

    .line 117
    if-nez p0, :cond_5

    .line 119
    const-string p0, "Failed to get original session id from unique session id. uniqueSessionId="

    .line 121
    invoke-static {p0, p2, v3}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return v2

    .line 125
    :cond_5
    return v4
.end method

.method public final findManagerWithId(I)Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getManagerRecords()Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 21
    iget v1, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    .line 23
    if-ne v1, p1, :cond_0

    .line 25
    return-object v0

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method public final findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRouteProviders:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/server/media/MediaRoute2Provider;

    .line 19
    iget-object v1, v0, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    .line 21
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 27
    return-object v0

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method

.method public final getManagerRecords()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 9
    if-nez v0, :cond_0

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    iget-object v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 23
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mManagerRecords:Ljava/util/ArrayList;

    .line 25
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 28
    monitor-exit v0

    .line 29
    return-object v1

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public final getManagers()Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    .line 8
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 14
    if-nez v1, :cond_0

    .line 16
    return-object v0

    .line 17
    :cond_0
    iget-object v1, v1, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 19
    monitor-enter v1

    .line 20
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 22
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mManagerRecords:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object p0

    .line 28
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 40
    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    .line 42
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    monitor-exit v1

    .line 49
    return-object v0

    .line 50
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method public final getRouterRecords(Z)Ljava/util/List;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    if-nez v0, :cond_0

    .line 16
    return-object v1

    .line 17
    :cond_0
    iget-object v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 22
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mRouterRecords:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object p0

    .line 28
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_2

    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 40
    invoke-virtual {v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->hasSystemRoutingPermission()Z

    .line 43
    move-result v3

    .line 44
    if-ne p1, v3, :cond_1

    .line 46
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    monitor-exit v0

    .line 53
    return-object v1

    .line 54
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0
.end method

.method public final maybeUpdateDiscoveryPreferenceForUid(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 9
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 17
    iget-object v1, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mRouterRecords:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 22
    move-result-object v1

    .line 23
    new-instance v2, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda20;

    .line 25
    const/4 v3, 0x1

    .line 26
    invoke-direct {v2, p1, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda20;-><init>(II)V

    .line 29
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 32
    move-result v1

    .line 33
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 35
    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mManagerRecords:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 40
    move-result-object v2

    .line 41
    new-instance v3, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda20;

    .line 43
    const/4 v4, 0x2

    .line 44
    invoke-direct {v3, p1, v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda20;-><init>(II)V

    .line 47
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 50
    move-result p1

    .line 51
    or-int/2addr p1, v1

    .line 52
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    if-eqz p1, :cond_1

    .line 55
    new-instance p1, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda5;

    .line 57
    const/4 v0, 0x3

    .line 58
    invoke-direct {p1, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda5;-><init>(I)V

    .line 61
    invoke-static {p1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 68
    :cond_1
    return-void

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    throw p0
.end method

.method public final onRequestFailed(Lcom/android/server/media/MediaRoute2Provider;JI)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda1;

    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda1;-><init>(I)V

    .line 7
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    move-result-object p2

    .line 11
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object p3

    .line 15
    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 22
    return-void
.end method

.method public final onSessionCreated(Lcom/android/server/media/MediaRoute2Provider;JLandroid/media/RoutingSessionInfo;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda1;

    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda1;-><init>(I)V

    .line 7
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    move-result-object p2

    .line 11
    invoke-static {v0, p0, p1, p2, p4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 18
    return-void
.end method

.method public final updateDiscoveryPreferenceOnHandler()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 9
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    .line 14
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 20
    if-nez v1, :cond_1

    .line 22
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 25
    move-result-object v1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v1, v1, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 29
    monitor-enter v1

    .line 30
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    .line 32
    iget-object v3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 34
    iget-object v3, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mRouterRecords:Ljava/util/ArrayList;

    .line 36
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 39
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    move-object v1, v2

    .line 41
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getManagerRecords()Ljava/util/List;

    .line 44
    move-result-object v2

    .line 45
    iget-object v3, v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 47
    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    .line 50
    move-result v3

    .line 51
    const/4 v4, 0x0

    .line 52
    if-nez v3, :cond_2

    .line 54
    invoke-static {}, Lcom/android/media/flags/Flags;->enableScreenOffScanning()Z

    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_2

    .line 60
    move v2, v4

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 65
    move-result-object v2

    .line 66
    new-instance v3, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda22;

    .line 68
    const/4 v5, 0x1

    .line 69
    invoke-direct {v3, v5, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda22;-><init>(ILjava/lang/Object;)V

    .line 72
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 75
    move-result v2

    .line 76
    :goto_1
    if-eqz v2, :cond_3

    .line 78
    goto :goto_2

    .line 79
    :cond_3
    iget-object v3, v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 81
    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    .line 84
    move-result v3

    .line 85
    if-nez v3, :cond_4

    .line 87
    invoke-static {}, Lcom/android/media/flags/Flags;->enableScreenOffScanning()Z

    .line 90
    move-result v3

    .line 91
    if-nez v3, :cond_4

    .line 93
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 96
    move-result-object v1

    .line 97
    goto :goto_2

    .line 98
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 101
    move-result-object v1

    .line 102
    new-instance v3, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda22;

    .line 104
    const/4 v5, 0x2

    .line 105
    invoke-direct {v3, v5, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda22;-><init>(ILjava/lang/Object;)V

    .line 108
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 111
    move-result-object v1

    .line 112
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 115
    move-result-object v3

    .line 116
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Ljava/util/List;

    .line 122
    :goto_2
    iget-object v3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRouteProviders:Ljava/util/ArrayList;

    .line 124
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 127
    move-result-object v3

    .line 128
    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    move-result v5

    .line 132
    if-eqz v5, :cond_6

    .line 134
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    move-result-object v5

    .line 138
    check-cast v5, Lcom/android/server/media/MediaRoute2Provider;

    .line 140
    instance-of v6, v5, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 142
    if-eqz v6, :cond_5

    .line 144
    check-cast v5, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 146
    iget-boolean v6, v5, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mIsManagerScanning:Z

    .line 148
    if-eq v6, v2, :cond_5

    .line 150
    iput-boolean v2, v5, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mIsManagerScanning:Z

    .line 152
    invoke-virtual {v5}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->updateBinding()V

    .line 155
    goto :goto_3

    .line 156
    :cond_6
    new-instance v3, Ljava/util/HashSet;

    .line 158
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 161
    new-instance v5, Ljava/util/HashSet;

    .line 163
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 166
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 169
    move-result-object v1

    .line 170
    move v6, v4

    .line 171
    :cond_7
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    move-result v7

    .line 175
    const/4 v8, 0x1

    .line 176
    if-eqz v7, :cond_c

    .line 178
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    move-result-object v7

    .line 182
    check-cast v7, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 184
    iget-object v9, v7, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 186
    invoke-virtual {v9}, Landroid/media/RouteDiscoveryPreference;->getPreferredFeatures()Ljava/util/List;

    .line 189
    move-result-object v10

    .line 190
    invoke-interface {v5, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 193
    invoke-static {}, Lcom/android/media/flags/Flags;->enablePreventionOfManagerScansWhenNoAppsScan()Z

    .line 196
    move-result v10

    .line 197
    const/4 v11, 0x2

    .line 198
    if-eqz v10, :cond_a

    .line 200
    iget v10, v7, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mScanningState:I

    .line 202
    if-eq v10, v8, :cond_9

    .line 204
    if-eq v10, v11, :cond_9

    .line 206
    iget-object v10, v7, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 208
    invoke-virtual {v10}, Landroid/media/RouteDiscoveryPreference;->shouldPerformActiveScan()Z

    .line 211
    move-result v10

    .line 212
    if-eqz v10, :cond_8

    .line 214
    goto :goto_5

    .line 215
    :cond_8
    if-eqz v2, :cond_7

    .line 217
    :cond_9
    :goto_5
    invoke-virtual {v9}, Landroid/media/RouteDiscoveryPreference;->getPreferredFeatures()Ljava/util/List;

    .line 220
    move-result-object v9

    .line 221
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 224
    move-result v9

    .line 225
    if-nez v9, :cond_7

    .line 227
    goto :goto_6

    .line 228
    :cond_a
    iget v9, v7, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mScanningState:I

    .line 230
    if-eq v9, v8, :cond_b

    .line 232
    if-eq v9, v11, :cond_b

    .line 234
    iget-object v9, v7, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 236
    invoke-virtual {v9}, Landroid/media/RouteDiscoveryPreference;->shouldPerformActiveScan()Z

    .line 239
    move-result v9

    .line 240
    if-eqz v9, :cond_7

    .line 242
    :cond_b
    :goto_6
    iget-object v6, v7, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    .line 244
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 247
    move v6, v8

    .line 248
    goto :goto_4

    .line 249
    :cond_c
    new-instance v1, Landroid/media/RouteDiscoveryPreference$Builder;

    .line 251
    invoke-static {v5}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    .line 254
    move-result-object v5

    .line 255
    if-nez v6, :cond_d

    .line 257
    if-eqz v2, :cond_e

    .line 259
    :cond_d
    move v4, v8

    .line 260
    :cond_e
    invoke-direct {v1, v5, v4}, Landroid/media/RouteDiscoveryPreference$Builder;-><init>(Ljava/util/List;Z)V

    .line 263
    invoke-virtual {v1}, Landroid/media/RouteDiscoveryPreference$Builder;->build()Landroid/media/RouteDiscoveryPreference;

    .line 266
    move-result-object v1

    .line 267
    const-string v2, "MR2ServiceImpl"

    .line 269
    const-string v4, "Updating composite discovery preference | preference: %s, active routers: %s"

    .line 271
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    .line 274
    move-result-object v5

    .line 275
    invoke-static {v4, v5}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 278
    move-result-object v4

    .line 279
    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 284
    monitor-enter v0

    .line 285
    :try_start_1
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 287
    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mCompositeDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 289
    invoke-virtual {v1, v2}, Landroid/media/RouteDiscoveryPreference;->equals(Ljava/lang/Object;)Z

    .line 292
    move-result v2

    .line 293
    if-eqz v2, :cond_f

    .line 295
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 297
    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mActivelyScanningPackages:Ljava/util/Set;

    .line 299
    invoke-interface {v3, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    .line 302
    move-result v2

    .line 303
    if-eqz v2, :cond_f

    .line 305
    monitor-exit v0

    .line 306
    goto :goto_8

    .line 307
    :catchall_0
    move-exception p0

    .line 308
    goto :goto_9

    .line 309
    :cond_f
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 311
    iput-object v1, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mCompositeDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 313
    iput-object v3, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mActivelyScanningPackages:Ljava/util/Set;

    .line 315
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mRouteProviders:Ljava/util/ArrayList;

    .line 318
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 321
    move-result-object v0

    .line 322
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 325
    move-result v1

    .line 326
    if-eqz v1, :cond_10

    .line 328
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 331
    move-result-object v1

    .line 332
    check-cast v1, Lcom/android/server/media/MediaRoute2Provider;

    .line 334
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 336
    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mCompositeDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 338
    invoke-virtual {v1, v3, v2}, Lcom/android/server/media/MediaRoute2Provider;->updateDiscoveryPreference(Ljava/util/Set;Landroid/media/RouteDiscoveryPreference;)V

    .line 341
    goto :goto_7

    .line 342
    :cond_10
    :goto_8
    return-void

    .line 343
    :goto_9
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 344
    throw p0

    .line 345
    :catchall_1
    move-exception p0

    .line 346
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 347
    throw p0
.end method
