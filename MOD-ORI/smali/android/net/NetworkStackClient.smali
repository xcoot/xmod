.class public Landroid/net/NetworkStackClient;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field private static final NETWORKSTACK_TIMEOUT_MS:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "NetworkStackClient"

.field private static sInstance:Landroid/net/NetworkStackClient;


# instance fields
.field private mConnector:Landroid/net/INetworkStackConnector;

.field private final mDependencies:Landroid/net/NetworkStackClient$Dependencies;

.field private final mPendingNetStackRequests:Ljava/util/ArrayList;

.field private volatile mWasSystemServerInitialized:Z


# direct methods
.method public static synthetic $r8$lambda$Ba_AsipTQQ-hKyLsGAPLnsXM-L0(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;Landroid/net/INetworkStackConnector;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroid/net/NetworkStackClient;->lambda$makeDhcpServer$0(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;Landroid/net/INetworkStackConnector;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$GmFOZAoaRNbtlKNkgJ53jvx1I8E(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;Landroid/net/INetworkStackConnector;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/net/NetworkStackClient;->lambda$makeIpClient$1(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;Landroid/net/INetworkStackConnector;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$dN_4LBakF3RMC4PJoPi4VjtiKz0(Landroid/net/IIpMemoryStoreCallbacks;Landroid/net/INetworkStackConnector;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/net/NetworkStackClient;->lambda$fetchIpMemoryStore$3(Landroid/net/IIpMemoryStoreCallbacks;Landroid/net/INetworkStackConnector;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$lTpfm7adJOl_gEmKBPGYh1wEYsk(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;Landroid/net/INetworkStackConnector;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroid/net/NetworkStackClient;->lambda$makeNetworkMonitor$2(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;Landroid/net/INetworkStackConnector;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogi(Landroid/net/NetworkStackClient;)V
    .locals 1

    .line 1
    const-string v0, "Network stack service connected"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/net/NetworkStackClient;->logi(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterNetworkStackService(Landroid/net/NetworkStackClient;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/NetworkStackClient;->registerNetworkStackService(Landroid/os/IBinder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    new-instance v0, Landroid/net/NetworkStackClient$DependenciesImpl;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-direct {p0, v0}, Landroid/net/NetworkStackClient;-><init>(Landroid/net/NetworkStackClient$Dependencies;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkStackClient$Dependencies;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroid/net/NetworkStackClient;->mWasSystemServerInitialized:Z

    .line 4
    iput-object p1, p0, Landroid/net/NetworkStackClient;->mDependencies:Landroid/net/NetworkStackClient$Dependencies;

    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/net/NetworkStackClient;
    .locals 2

    .line 1
    const-class v0, Landroid/net/NetworkStackClient;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroid/net/NetworkStackClient;->sInstance:Landroid/net/NetworkStackClient;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Landroid/net/NetworkStackClient;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/net/NetworkStackClient;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Landroid/net/NetworkStackClient;->sInstance:Landroid/net/NetworkStackClient;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Landroid/net/NetworkStackClient;->sInstance:Landroid/net/NetworkStackClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw v1
.end method

.method private getRemoteConnector()Landroid/net/INetworkStackConnector;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3
    .line 4
    .line 5
    move-result-wide v1

    .line 6
    :cond_0
    const-string/jumbo v3, "network_stack"

    .line 7
    .line 8
    .line 9
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    if-nez v3, :cond_1

    .line 14
    .line 15
    const-wide/16 v3, 0x14

    .line 16
    .line 17
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    sub-long/2addr v3, v1

    .line 25
    const-wide/16 v5, 0x2710

    .line 26
    .line 27
    cmp-long v3, v3, v5

    .line 28
    .line 29
    if-lez v3, :cond_0

    .line 30
    .line 31
    const-string v1, "Timeout waiting for NetworkStack connector"

    .line 32
    .line 33
    invoke-direct {p0, v1, v0}, Landroid/net/NetworkStackClient;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    return-object v0

    .line 37
    :catch_0
    move-exception v1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-static {v3}, Landroid/net/INetworkStackConnector$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStackConnector;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :goto_0
    const-string v2, "Error waiting for NetworkStack connector"

    .line 45
    .line 46
    invoke-direct {p0, v2, v1}, Landroid/net/NetworkStackClient;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    return-object v0
.end method

.method private static synthetic lambda$fetchIpMemoryStore$3(Landroid/net/IIpMemoryStoreCallbacks;Landroid/net/INetworkStackConnector;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p1, p0}, Landroid/net/INetworkStackConnector;->fetchIpMemoryStore(Landroid/net/IIpMemoryStoreCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 7
    .line 8
    .line 9
    :goto_0
    return-void
.end method

.method private static synthetic lambda$makeDhcpServer$0(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;Landroid/net/INetworkStackConnector;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p3, p0, p1, p2}, Landroid/net/INetworkStackConnector;->makeDhcpServer(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 7
    .line 8
    .line 9
    :goto_0
    return-void
.end method

.method private static synthetic lambda$makeIpClient$1(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;Landroid/net/INetworkStackConnector;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkStackConnector;->makeIpClient(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 7
    .line 8
    .line 9
    :goto_0
    return-void
.end method

.method private static synthetic lambda$makeNetworkMonitor$2(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;Landroid/net/INetworkStackConnector;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p3, p0, p1, p2}, Landroid/net/INetworkStackConnector;->makeNetworkMonitor(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 7
    .line 8
    .line 9
    :goto_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-object p0, Landroid/net/NetworkStackClient;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    sget-object p0, Landroid/net/NetworkStackClient;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    sget-object p0, Landroid/net/NetworkStackClient;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-object p0, Landroid/net/NetworkStackClient;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private registerNetworkStackService(Landroid/os/IBinder;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/net/INetworkStackConnector$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStackConnector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroid/net/NetworkStackClient;->mDependencies:Landroid/net/NetworkStackClient$Dependencies;

    .line 6
    .line 7
    invoke-interface {v1, p1}, Landroid/net/NetworkStackClient$Dependencies;->addToServiceManager(Landroid/os/IBinder;)V

    .line 8
    .line 9
    .line 10
    const-string p1, "Network stack service registered"

    .line 11
    .line 12
    invoke-direct {p0, p1}, Landroid/net/NetworkStackClient;->log(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    .line 16
    .line 17
    monitor-enter p1

    .line 18
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    iget-object v2, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Landroid/net/NetworkStackClient;->mConnector:Landroid/net/INetworkStackConnector;

    .line 31
    .line 32
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Landroid/net/NetworkStackClient$NetworkStackCallback;

    .line 48
    .line 49
    invoke-interface {p1, v0}, Landroid/net/NetworkStackClient$NetworkStackCallback;->onNetworkStackConnected(Landroid/net/INetworkStackConnector;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    return-void

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    throw p0
.end method

.method private requestConnector(Landroid/net/NetworkStackClient$NetworkStackCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/NetworkStackClient;->mDependencies:Landroid/net/NetworkStackClient$Dependencies;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/net/NetworkStackClient$Dependencies;->checkCallerUid()V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Landroid/net/NetworkStackClient;->mWasSystemServerInitialized:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Landroid/net/NetworkStackClient;->getRemoteConnector()Landroid/net/INetworkStackConnector;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_0
    iput-object v0, p0, Landroid/net/NetworkStackClient;->mConnector:Landroid/net/INetworkStackConnector;

    .line 18
    .line 19
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-interface {p1, v0}, Landroid/net/NetworkStackClient$NetworkStackCallback;->onNetworkStackConnected(Landroid/net/INetworkStackConnector;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p0

    .line 27
    :cond_0
    iget-object v0, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    .line 28
    .line 29
    monitor-enter v0

    .line 30
    :try_start_2
    iget-object v1, p0, Landroid/net/NetworkStackClient;->mConnector:Landroid/net/INetworkStackConnector;

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    iget-object p0, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :catchall_1
    move-exception p0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 44
    invoke-interface {p1, v1}, Landroid/net/NetworkStackClient$NetworkStackCallback;->onNetworkStackConnected(Landroid/net/INetworkStackConnector;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 49
    throw p0
.end method


# virtual methods
.method public fetchIpMemoryStore(Landroid/net/IIpMemoryStoreCallbacks;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda2;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda2;-><init>(Landroid/net/IIpMemoryStoreCallbacks;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroid/net/NetworkStackClient;->requestConnector(Landroid/net/NetworkStackClient$NetworkStackCallback;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public init()V
    .locals 1

    .line 1
    const-string v0, "Network stack init"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/net/NetworkStackClient;->log(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroid/net/NetworkStackClient;->mWasSystemServerInitialized:Z

    .line 8
    .line 9
    return-void
.end method

.method public makeDhcpServer(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroid/net/NetworkStackClient;->requestConnector(Landroid/net/NetworkStackClient$NetworkStackCallback;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public makeIpClient(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroid/net/NetworkStackClient;->requestConnector(Landroid/net/NetworkStackClient$NetworkStackCallback;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public makeNetworkMonitor(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda1;-><init>(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroid/net/NetworkStackClient;->requestConnector(Landroid/net/NetworkStackClient$NetworkStackCallback;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public start()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/net/NetworkStackClient;->mDependencies:Landroid/net/NetworkStackClient$Dependencies;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/net/NetworkStackClient$Dependencies;->getConnectivityModuleConnector()Landroid/net/ConnectivityModuleConnector;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Landroid/net/INetworkStackConnector;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Landroid/net/NetworkStackClient$NetworkStackConnection;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Landroid/net/NetworkStackClient$NetworkStackConnection;-><init>(Landroid/net/NetworkStackClient;)V

    .line 16
    .line 17
    .line 18
    const-string v3, "android.permission.MAINLINE_NETWORK_STACK"

    .line 19
    .line 20
    invoke-virtual {v0, v1, v3, v2}, Landroid/net/ConnectivityModuleConnector;->startModuleService(Ljava/lang/String;Ljava/lang/String;Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;)V

    .line 21
    .line 22
    .line 23
    const-string v0, "Network stack service start requested"

    .line 24
    .line 25
    invoke-direct {p0, v0}, Landroid/net/NetworkStackClient;->log(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
