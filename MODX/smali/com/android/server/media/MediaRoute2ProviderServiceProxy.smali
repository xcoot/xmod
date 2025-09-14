.class public final Lcom/android/server/media/MediaRoute2ProviderServiceProxy;
.super Lcom/android/server/media/MediaRoute2Provider;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

.field public mBound:Z

.field public mConnectionReady:Z

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mIsManagerScanning:Z

.field public final mIsSelfScanOnlyProvider:Z

.field public mLastDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

.field public mLastDiscoveryPreferenceIncludesThisPackage:Z

.field public final mReleasingSessions:Ljava/util/List;

.field public final mRequestIdToSessionCreationRequest:Landroid/util/LongSparseArray;

.field public mRunning:Z

.field public final mServiceConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl;

.field public final mSessionOriginalIdToTransferRequest:Ljava/util/Map;

.field public final mUserId:I


# direct methods
.method public static -$$Nest$monBindingDiedInternal(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->unbind()V

    .line 4
    invoke-static {}, Lcom/android/media/flags/Flags;->enablePreventionOfKeepAliveRouteProviders()Z

    .line 7
    move-result v0

    .line 8
    const-string v1, "MR2ProviderSvcProxy"

    .line 10
    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 19
    move-result-object p0

    .line 20
    const-string p1, "Route provider service (%s) binding died, but we did not rebind."

    .line 22
    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->shouldBind()Z

    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 43
    move-result-object p1

    .line 44
    const-string v0, "Rebound to provider service (%s) after binding died."

    .line 46
    invoke-static {v0, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->bind()V

    .line 56
    :cond_1
    :goto_0
    return-void
.end method

.method public static -$$Nest$monServiceConnectedInternal(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;Landroid/os/IBinder;)V
    .locals 5

    .line 1
    const-string v0, "MR2ProviderSvcProxy"

    .line 3
    sget-boolean v1, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->DEBUG:Z

    .line 5
    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    const-string v3, ": Connected"

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mBound:Z

    .line 32
    if-eqz v2, :cond_2

    .line 34
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->disconnect()V

    .line 37
    invoke-static {p1}, Landroid/media/IMediaRoute2ProviderService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRoute2ProviderService;

    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_1

    .line 43
    new-instance v2, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 45
    invoke-direct {v2, p0, p1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;-><init>(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;Landroid/media/IMediaRoute2ProviderService;)V

    .line 48
    :try_start_0
    invoke-interface {p1}, Landroid/media/IMediaRoute2ProviderService;->asBinder()Landroid/os/IBinder;

    .line 51
    move-result-object v3

    .line 52
    const/4 v4, 0x0

    .line 53
    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 56
    iget-object v3, v2, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->mCallbackStub:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;

    .line 58
    invoke-interface {p1, v3}, Landroid/media/IMediaRoute2ProviderService;->setCallback(Landroid/media/IMediaRoute2ProviderServiceCallback;)V

    .line 61
    iget-object p1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mHandler:Landroid/os/Handler;

    .line 63
    new-instance v3, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda1;

    .line 65
    const/4 v4, 0x1

    .line 66
    invoke-direct {v3, v4, v2}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 69
    invoke-virtual {p1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    iput-object v2, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 74
    goto :goto_0

    .line 75
    :catch_0
    invoke-virtual {v2}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->binderDied()V

    .line 78
    if-eqz v1, :cond_2

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    .line 82
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    const-string p0, ": Registration failed"

    .line 90
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object p0

    .line 97
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    goto :goto_0

    .line 101
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 103
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    const-string p0, ": Service returned invalid binder"

    .line 111
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object p0

    .line 118
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_2
    :goto_0
    return-void
.end method

.method public static -$$Nest$monServiceDisconnectedInternal(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->DEBUG:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ": Service disconnected"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    const-string v1, "MR2ProviderSvcProxy"

    .line 27
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->disconnect()V

    .line 33
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "MR2ProviderSvcProxy"

    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->DEBUG:Z

    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/content/ComponentName;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0, p3}, Lcom/android/server/media/MediaRoute2Provider;-><init>(Landroid/content/ComponentName;)V

    .line 4
    new-instance p3, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl;

    .line 6
    invoke-direct {p3, p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl;-><init>(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;)V

    .line 9
    iput-object p3, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mServiceConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl;

    .line 11
    const/4 p3, 0x0

    .line 12
    iput-object p3, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mLastDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 14
    const/4 p3, 0x0

    .line 15
    iput-boolean p3, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mLastDiscoveryPreferenceIncludesThisPackage:Z

    .line 17
    new-instance p3, Ljava/util/ArrayList;

    .line 19
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 22
    iput-object p3, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mReleasingSessions:Ljava/util/List;

    .line 24
    const-string p3, "Context must not be null."

    .line 26
    invoke-static {p1, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    iput-object p1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mContext:Landroid/content/Context;

    .line 31
    new-instance p1, Landroid/util/LongSparseArray;

    .line 33
    invoke-direct {p1}, Landroid/util/LongSparseArray;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mRequestIdToSessionCreationRequest:Landroid/util/LongSparseArray;

    .line 38
    new-instance p1, Ljava/util/HashMap;

    .line 40
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mSessionOriginalIdToTransferRequest:Ljava/util/Map;

    .line 45
    iput-boolean p4, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mIsSelfScanOnlyProvider:Z

    .line 47
    iput p5, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mUserId:I

    .line 49
    new-instance p1, Landroid/os/Handler;

    .line 51
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 54
    iput-object p1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mHandler:Landroid/os/Handler;

    .line 56
    return-void
.end method


# virtual methods
.method public final assignProviderIdForSession(Landroid/media/RoutingSessionInfo;)Landroid/media/RoutingSessionInfo;
    .locals 1

    .line 1
    new-instance v0, Landroid/media/RoutingSessionInfo$Builder;

    .line 3
    invoke-direct {v0, p1}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Landroid/media/RoutingSessionInfo;)V

    .line 6
    iget-object p1, p0, Lcom/android/server/media/MediaRoute2Provider;->mComponentName:Landroid/content/ComponentName;

    .line 8
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Landroid/media/RoutingSessionInfo$Builder;->setOwnerPackageName(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    .line 15
    move-result-object p1

    .line 16
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    .line 18
    invoke-virtual {p1, p0}, Landroid/media/RoutingSessionInfo$Builder;->setProviderId(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo$Builder;->build()Landroid/media/RoutingSessionInfo;

    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public final bind()V
    .locals 8

    .line 1
    const-string v0, ": Bind failed"

    .line 3
    iget-boolean v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mBound:Z

    .line 5
    if-nez v1, :cond_1

    .line 7
    sget-boolean v1, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->DEBUG:Z

    .line 9
    const-string v2, "MR2ProviderSvcProxy"

    .line 11
    if-eqz v1, :cond_0

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const-string v4, ": Binding"

    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 30
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    new-instance v3, Landroid/content/Intent;

    .line 35
    const-string v4, "android.media.MediaRoute2ProviderService"

    .line 37
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    iget-object v4, p0, Lcom/android/server/media/MediaRoute2Provider;->mComponentName:Landroid/content/ComponentName;

    .line 42
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 45
    :try_start_0
    iget-object v4, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mContext:Landroid/content/Context;

    .line 47
    iget-object v5, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mServiceConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl;

    .line 49
    new-instance v6, Landroid/os/UserHandle;

    .line 51
    iget v7, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mUserId:I

    .line 53
    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    .line 56
    const v7, 0x4000001

    .line 59
    invoke-virtual {v4, v3, v5, v7, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 62
    move-result v3

    .line 63
    iput-boolean v3, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mBound:Z

    .line 65
    if-nez v3, :cond_1

    .line 67
    if-eqz v1, :cond_1

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    .line 71
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v3

    .line 84
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    goto :goto_0

    .line 88
    :catch_0
    move-exception v3

    .line 89
    if-eqz v1, :cond_1

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object p0

    .line 106
    invoke-static {v2, p0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    :cond_1
    :goto_0
    return-void
.end method

.method public final createSessionWithPopulatedTransferInitiationDataLocked(JLandroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;)Landroid/media/RoutingSessionInfo;
    .locals 5

    .line 1
    if-eqz p3, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mSessionOriginalIdToTransferRequest:Ljava/util/Map;

    .line 5
    invoke-virtual {p4}, Landroid/media/RoutingSessionInfo;->getOriginalId()Ljava/lang/String;

    .line 8
    move-result-object p2

    .line 9
    check-cast p1, Ljava/util/HashMap;

    .line 11
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mRequestIdToSessionCreationRequest:Landroid/util/LongSparseArray;

    .line 20
    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    .line 26
    :goto_0
    const/4 p2, 0x1

    .line 27
    const/4 v0, 0x0

    .line 28
    if-eqz p1, :cond_1

    .line 30
    invoke-virtual {p4}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 37
    move-result-object v1

    .line 38
    new-instance v2, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest$$ExternalSyntheticLambda0;

    .line 40
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 46
    move-result-object v1

    .line 47
    iget-object v2, p1, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mTargetOriginalRouteId:Ljava/lang/String;

    .line 49
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v3, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest$$ExternalSyntheticLambda1;

    .line 54
    invoke-direct {v3, v2}, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_1

    .line 63
    move v1, p2

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    move v1, v0

    .line 66
    :goto_1
    if-eqz p1, :cond_2

    .line 68
    invoke-virtual {p4}, Landroid/media/RoutingSessionInfo;->getTransferableRoutes()Ljava/util/List;

    .line 71
    move-result-object v2

    .line 72
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 75
    move-result-object v2

    .line 76
    new-instance v3, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest$$ExternalSyntheticLambda0;

    .line 78
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 84
    move-result-object v2

    .line 85
    iget-object v3, p1, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mTargetOriginalRouteId:Ljava/lang/String;

    .line 87
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v4, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest$$ExternalSyntheticLambda1;

    .line 92
    invoke-direct {v4, v3}, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_2

    .line 101
    goto :goto_2

    .line 102
    :cond_2
    move p2, v0

    .line 103
    :goto_2
    if-eqz v1, :cond_3

    .line 105
    iget v0, p1, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mTransferReason:I

    .line 107
    iget-object v2, p1, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mTransferInitiatorUserHandle:Landroid/os/UserHandle;

    .line 109
    iget-object v3, p1, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mTransferInitiatorPackageName:Ljava/lang/String;

    .line 111
    goto :goto_3

    .line 112
    :cond_3
    if-eqz p3, :cond_4

    .line 114
    invoke-virtual {p3}, Landroid/media/RoutingSessionInfo;->getTransferReason()I

    .line 117
    move-result v0

    .line 118
    invoke-virtual {p3}, Landroid/media/RoutingSessionInfo;->getTransferInitiatorUserHandle()Landroid/os/UserHandle;

    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {p3}, Landroid/media/RoutingSessionInfo;->getTransferInitiatorPackageName()Ljava/lang/String;

    .line 125
    move-result-object v3

    .line 126
    goto :goto_3

    .line 127
    :cond_4
    iget v2, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mUserId:I

    .line 129
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {p4}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    .line 136
    move-result-object v3

    .line 137
    :goto_3
    if-nez v1, :cond_5

    .line 139
    if-nez p2, :cond_7

    .line 141
    :cond_5
    if-eqz p3, :cond_6

    .line 143
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mSessionOriginalIdToTransferRequest:Ljava/util/Map;

    .line 145
    invoke-virtual {p4}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    .line 148
    move-result-object p1

    .line 149
    check-cast p0, Ljava/util/HashMap;

    .line 151
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    goto :goto_4

    .line 155
    :cond_6
    if-eqz p1, :cond_7

    .line 157
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mRequestIdToSessionCreationRequest:Landroid/util/LongSparseArray;

    .line 159
    iget-wide p1, p1, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mRequestId:J

    .line 161
    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 164
    :cond_7
    :goto_4
    new-instance p0, Landroid/media/RoutingSessionInfo$Builder;

    .line 166
    invoke-direct {p0, p4}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Landroid/media/RoutingSessionInfo;)V

    .line 169
    invoke-virtual {p0, v2, v3}, Landroid/media/RoutingSessionInfo$Builder;->setTransferInitiator(Landroid/os/UserHandle;Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    .line 172
    move-result-object p0

    .line 173
    invoke-virtual {p0, v0}, Landroid/media/RoutingSessionInfo$Builder;->setTransferReason(I)Landroid/media/RoutingSessionInfo$Builder;

    .line 176
    move-result-object p0

    .line 177
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo$Builder;->build()Landroid/media/RoutingSessionInfo;

    .line 180
    move-result-object p0

    .line 181
    return-object p0
.end method

.method public final deselectRoute(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mConnectionReady:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->mService:Landroid/media/IMediaRoute2ProviderService;

    .line 12
    invoke-interface {p0, p2, p3, p1, p4}, Landroid/media/IMediaRoute2ProviderService;->deselectRoute(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    const-string p1, "MR2ProviderSvcProxy"

    .line 19
    const-string/jumbo p2, "deselectRoute: Failed to deliver request."

    .line 22
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    :cond_0
    :goto_0
    return-void
.end method

.method public final disconnect()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 3
    if-eqz v0, :cond_1

    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mConnectionReady:Z

    .line 8
    iget-object v2, v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->mService:Landroid/media/IMediaRoute2ProviderService;

    .line 10
    invoke-interface {v2}, Landroid/media/IMediaRoute2ProviderService;->asBinder()Landroid/os/IBinder;

    .line 13
    move-result-object v2

    .line 14
    invoke-interface {v2, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 17
    iget-object v0, v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->mCallbackStub:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;

    .line 19
    iget-object v0, v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceCallbackStub;->mConnectionRef:Ljava/lang/ref/WeakReference;

    .line 21
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRoute2Provider;->setProviderState(Landroid/media/MediaRoute2ProviderInfo;)V

    .line 30
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2Provider;->notifyProviderState()V

    .line 33
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    .line 35
    monitor-enter v0

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    .line 38
    check-cast v1, Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object v1

    .line 44
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_0

    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Landroid/media/RoutingSessionInfo;

    .line 56
    iget-object v3, p0, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    .line 58
    check-cast v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 60
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    new-instance v4, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda3;

    .line 65
    const/4 v5, 0x4

    .line 66
    invoke-direct {v4, v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda3;-><init>(I)V

    .line 69
    invoke-static {v4, v3, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_1

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    .line 81
    check-cast v1, Ljava/util/ArrayList;

    .line 83
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 86
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mReleasingSessions:Ljava/util/List;

    .line 88
    check-cast v1, Ljava/util/ArrayList;

    .line 90
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 93
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mRequestIdToSessionCreationRequest:Landroid/util/LongSparseArray;

    .line 95
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 98
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mSessionOriginalIdToTransferRequest:Ljava/util/Map;

    .line 100
    check-cast p0, Ljava/util/HashMap;

    .line 102
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 105
    monitor-exit v0

    .line 106
    goto :goto_2

    .line 107
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    throw p0

    .line 109
    :cond_1
    :goto_2
    return-void
.end method

.method public final getDebugString()Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mRequestIdToSessionCreationRequest:Landroid/util/LongSparseArray;

    .line 6
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    .line 9
    move-result v1

    .line 10
    iget-object v2, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mSessionOriginalIdToTransferRequest:Ljava/util/Map;

    .line 12
    check-cast v2, Ljava/util/HashMap;

    .line 14
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 17
    move-result v2

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    const-string v0, "ProviderServiceProxy - package: %s, bound: %b, connection (active:%b, ready:%b), pending (session creations: %d, transfers: %d)"

    .line 21
    iget-object v3, p0, Lcom/android/server/media/MediaRoute2Provider;->mComponentName:Landroid/content/ComponentName;

    .line 23
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 26
    move-result-object v4

    .line 27
    iget-boolean v3, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mBound:Z

    .line 29
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    move-result-object v5

    .line 33
    iget-object v3, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 35
    if-eqz v3, :cond_0

    .line 37
    const/4 v3, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v3, 0x0

    .line 40
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 43
    move-result-object v6

    .line 44
    iget-boolean p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mConnectionReady:Z

    .line 46
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 49
    move-result-object v7

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v8

    .line 54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    move-result-object v9

    .line 58
    filled-new-array/range {v4 .. v9}, [Ljava/lang/Object;

    .line 61
    move-result-object p0

    .line 62
    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    throw p0
.end method

.method public final prepareReleaseSession(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    .line 6
    check-cast v1, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 12
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroid/media/RoutingSessionInfo;

    .line 24
    invoke-virtual {v2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    .line 27
    move-result-object v3

    .line 28
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 34
    iget-object p1, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    .line 36
    check-cast p1, Ljava/util/ArrayList;

    .line 38
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 41
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mReleasingSessions:Ljava/util/List;

    .line 43
    check-cast p0, Ljava/util/ArrayList;

    .line 45
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    :goto_0
    monitor-exit v0

    .line 52
    return-void

    .line 53
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
.end method

.method public final releaseSession(JLjava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mConnectionReady:Z

    .line 3
    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/android/media/flags/Flags;->enableBuiltInSpeakerRouteSuitabilityStatuses()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mSessionOriginalIdToTransferRequest:Ljava/util/Map;

    .line 16
    check-cast v1, Ljava/util/HashMap;

    .line 18
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    monitor-exit v0

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0

    .line 26
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    :try_start_1
    iget-object v0, v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->mService:Landroid/media/IMediaRoute2ProviderService;

    .line 33
    invoke-interface {v0, p1, p2, p3}, Landroid/media/IMediaRoute2ProviderService;->releaseSession(JLjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 36
    goto :goto_1

    .line 37
    :catch_0
    const-string p1, "MR2ProviderSvcProxy"

    .line 39
    const-string/jumbo p2, "releaseSession: Failed to deliver request."

    .line 42
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->updateBinding()V

    .line 48
    :cond_1
    return-void
.end method

.method public final requestCreateSession(JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILandroid/os/UserHandle;Ljava/lang/String;)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    iget-boolean v1, v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mConnectionReady:Z

    .line 4
    if-eqz v1, :cond_1

    .line 6
    invoke-static {}, Lcom/android/media/flags/Flags;->enableBuiltInSpeakerRouteSuitabilityStatuses()Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 12
    iget-object v1, v0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    iget-object v2, v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mRequestIdToSessionCreationRequest:Landroid/util/LongSparseArray;

    .line 17
    new-instance v10, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    .line 19
    move-object v3, v10

    .line 20
    move-wide v4, p1

    .line 21
    move-object v6, p4

    .line 22
    move/from16 v7, p6

    .line 24
    move-object/from16 v8, p7

    .line 26
    move-object/from16 v9, p8

    .line 28
    invoke-direct/range {v3 .. v9}, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;-><init>(JLjava/lang/String;ILandroid/os/UserHandle;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v2, p1, p2, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 34
    monitor-exit v1

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw v0

    .line 39
    :cond_0
    move-wide v4, p1

    .line 40
    :goto_0
    iget-object v1, v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    :try_start_1
    iget-object v3, v1, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->mService:Landroid/media/IMediaRoute2ProviderService;

    .line 47
    move-wide v4, p1

    .line 48
    move-object v6, p3

    .line 49
    move-object v7, p4

    .line 50
    move-object/from16 v8, p5

    .line 52
    invoke-interface/range {v3 .. v8}, Landroid/media/IMediaRoute2ProviderService;->requestCreateSession(JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    goto :goto_1

    .line 56
    :catch_0
    const-string v1, "MR2ProviderSvcProxy"

    .line 58
    const-string/jumbo v2, "requestCreateSession: Failed to deliver request."

    .line 61
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->updateBinding()V

    .line 67
    :cond_1
    return-void
.end method

.method public final selectRoute(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mConnectionReady:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->mService:Landroid/media/IMediaRoute2ProviderService;

    .line 12
    invoke-interface {p0, p2, p3, p1, p4}, Landroid/media/IMediaRoute2ProviderService;->selectRoute(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    const-string p1, "MR2ProviderSvcProxy"

    .line 19
    const-string/jumbo p2, "selectRoute: Failed to deliver request."

    .line 22
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    :cond_0
    :goto_0
    return-void
.end method

.method public final setRouteVolume(ILjava/lang/String;J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mConnectionReady:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    :try_start_0
    iget-object v0, v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->mService:Landroid/media/IMediaRoute2ProviderService;

    .line 12
    invoke-interface {v0, p3, p4, p2, p1}, Landroid/media/IMediaRoute2ProviderService;->setRouteVolume(JLjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p1

    .line 17
    const-string p2, "MR2ProviderSvcProxy"

    .line 19
    const-string/jumbo p3, "setRouteVolume: Failed to deliver request."

    .line 22
    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->updateBinding()V

    .line 28
    :cond_0
    return-void
.end method

.method public final setSessionVolume(ILjava/lang/String;J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mConnectionReady:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    :try_start_0
    iget-object v0, v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->mService:Landroid/media/IMediaRoute2ProviderService;

    .line 12
    invoke-interface {v0, p3, p4, p2, p1}, Landroid/media/IMediaRoute2ProviderService;->setSessionVolume(JLjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p1

    .line 17
    const-string p2, "MR2ProviderSvcProxy"

    .line 19
    const-string/jumbo p3, "setSessionVolume: Failed to deliver request."

    .line 22
    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->updateBinding()V

    .line 28
    :cond_0
    return-void
.end method

.method public final shouldBind()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mRunning:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mIsManagerScanning:Z

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 12
    invoke-static {}, Lcom/android/media/flags/Flags;->enablePreventionOfManagerScansWhenNoAppsScan()Z

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 18
    move v0, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v0, v1

    .line 21
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2Provider;->getSessionInfos()Ljava/util/List;

    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_5

    .line 33
    if-eqz v0, :cond_2

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mLastDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 38
    if-eqz v0, :cond_4

    .line 40
    invoke-virtual {v0}, Landroid/media/RouteDiscoveryPreference;->getPreferredFeatures()Ljava/util/List;

    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_4

    .line 50
    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mLastDiscoveryPreferenceIncludesThisPackage:Z

    .line 52
    if-nez v0, :cond_3

    .line 54
    iget-boolean p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mIsSelfScanOnlyProvider:Z

    .line 56
    if-nez p0, :cond_4

    .line 58
    :cond_3
    move v1, v2

    .line 59
    :cond_4
    return v1

    .line 60
    :cond_5
    :goto_1
    return v2
.end method

.method public final start(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mRunning:Z

    .line 3
    if-nez v0, :cond_1

    .line 5
    sget-boolean v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->DEBUG:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, ": Starting"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    const-string v1, "MR2ProviderSvcProxy"

    .line 28
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mRunning:Z

    .line 34
    invoke-static {}, Lcom/android/media/flags/Flags;->enablePreventionOfKeepAliveRouteProviders()Z

    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 40
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->updateBinding()V

    .line 43
    :cond_1
    if-eqz p1, :cond_2

    .line 45
    iget-object p1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 47
    if-nez p1, :cond_2

    .line 49
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->shouldBind()Z

    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_2

    .line 55
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->unbind()V

    .line 58
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->bind()V

    .line 61
    :cond_2
    return-void
.end method

.method public final stop()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mRunning:Z

    .line 3
    if-eqz v0, :cond_1

    .line 5
    sget-boolean v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->DEBUG:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, ": Stopping"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    const-string v1, "MR2ProviderSvcProxy"

    .line 28
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mRunning:Z

    .line 34
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->updateBinding()V

    .line 37
    :cond_1
    return-void
.end method

.method public final transferToRoute(JLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p5

    .line 4
    iget-boolean v2, v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mConnectionReady:Z

    .line 6
    if-eqz v2, :cond_1

    .line 8
    invoke-static {}, Lcom/android/media/flags/Flags;->enableBuiltInSpeakerRouteSuitabilityStatuses()Z

    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 14
    iget-object v2, v0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    .line 16
    monitor-enter v2

    .line 17
    :try_start_0
    iget-object v3, v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mSessionOriginalIdToTransferRequest:Ljava/util/Map;

    .line 19
    new-instance v11, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;

    .line 21
    move-object v4, v11

    .line 22
    move-wide v5, p1

    .line 23
    move-object/from16 v7, p6

    .line 25
    move/from16 v8, p7

    .line 27
    move-object v9, p3

    .line 28
    move-object/from16 v10, p4

    .line 30
    invoke-direct/range {v4 .. v10}, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;-><init>(JLjava/lang/String;ILandroid/os/UserHandle;Ljava/lang/String;)V

    .line 33
    check-cast v3, Ljava/util/HashMap;

    .line 35
    invoke-virtual {v3, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    monitor-exit v2

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw v0

    .line 43
    :cond_0
    :goto_0
    iget-object v0, v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    :try_start_1
    iget-object v0, v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->mService:Landroid/media/IMediaRoute2ProviderService;

    .line 50
    move-wide v2, p1

    .line 51
    move-object/from16 v4, p6

    .line 53
    invoke-interface {v0, p1, p2, v1, v4}, Landroid/media/IMediaRoute2ProviderService;->transferToRoute(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 56
    goto :goto_1

    .line 57
    :catch_0
    move-exception v0

    .line 58
    const-string v1, "MR2ProviderSvcProxy"

    .line 60
    const-string/jumbo v2, "transferToRoute: Failed to deliver request."

    .line 63
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    :cond_1
    :goto_1
    return-void
.end method

.method public final unbind()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mBound:Z

    .line 3
    if-eqz v0, :cond_1

    .line 5
    sget-boolean v0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->DEBUG:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, ": Unbinding"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    const-string v1, "MR2ProviderSvcProxy"

    .line 28
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mBound:Z

    .line 34
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->disconnect()V

    .line 37
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mContext:Landroid/content/Context;

    .line 39
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mServiceConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$ServiceConnectionImpl;

    .line 41
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 44
    :cond_1
    return-void
.end method

.method public final updateBinding()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->shouldBind()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->bind()V

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->unbind()V

    .line 14
    :goto_0
    return-void
.end method

.method public final updateDiscoveryPreference(Ljava/util/Set;Landroid/media/RouteDiscoveryPreference;)V
    .locals 1

    .line 1
    iput-object p2, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mLastDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 3
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mComponentName:Landroid/content/ComponentName;

    .line 5
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 12
    move-result p1

    .line 13
    iput-boolean p1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mLastDiscoveryPreferenceIncludesThisPackage:Z

    .line 15
    iget-boolean p1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mConnectionReady:Z

    .line 17
    if-eqz p1, :cond_0

    .line 19
    iget-object p1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->mActiveConnection:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    :try_start_0
    iget-object p1, p1, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->mService:Landroid/media/IMediaRoute2ProviderService;

    .line 26
    invoke-interface {p1, p2}, Landroid/media/IMediaRoute2ProviderService;->updateDiscoveryPreference(Landroid/media/RouteDiscoveryPreference;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    const-string p1, "MR2ProviderSvcProxy"

    .line 32
    const-string/jumbo p2, "updateDiscoveryPreference: Failed to deliver request."

    .line 35
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->updateBinding()V

    .line 41
    return-void
.end method
