.class public final Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/knox/zt/devicetrust/OemNetdAdapter;


# static fields
.field public static final TAG:Ljava/lang/String; = "OemNetdAdapterImpl.ztd"


# instance fields
.field public mConnectivityManager:Landroid/net/ConnectivityManager;

.field public mContext:Landroid/content/Context;

.field public mEndpointMonitor:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;

.field public mHandler:Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$PacketTracingHandler;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$1;-><init>(Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;)V

    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$1;-><init>(Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;)V

    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 5
    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->mContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->mEndpointMonitor:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;

    .line 7
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->initializeHandlerThread()V

    return-void
.end method


# virtual methods
.method public final attachProbes(I)I
    .locals 1

    .line 1
    and-int/lit8 p1, p1, 0x40

    .line 3
    if-lez p1, :cond_0

    .line 5
    new-instance p1, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;

    .line 7
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p1, p0, v0}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;-><init>(Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;Landroid/net/Network;)V

    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->sendMessageToHandler(ILcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;)V

    .line 22
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->registerNetworkCallback()Z

    .line 25
    const/4 p0, 0x0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, -0x2

    .line 28
    :goto_0
    return p0
.end method

.method public final detachProbes(I)I
    .locals 1

    .line 1
    and-int/lit8 p1, p1, 0x40

    .line 3
    if-lez p1, :cond_0

    .line 5
    new-instance p1, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;

    .line 7
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p1, p0, v0}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;-><init>(Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;Landroid/net/Network;)V

    .line 18
    const/4 v0, 0x2

    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->sendMessageToHandler(ILcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;)V

    .line 22
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->unregisterNetworkCallback()Z

    .line 25
    const/4 p0, 0x0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, -0x2

    .line 28
    :goto_0
    return p0
.end method

.method public final disablePacketTracing(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 7
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->disableTlsPacketTracing(Ljava/lang/String;)I

    .line 10
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 16
    :cond_0
    const/4 p0, -0x6

    .line 17
    :goto_0
    if-eqz p0, :cond_1

    .line 19
    sget-object p1, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->TAG:Ljava/lang/String;

    .line 21
    const-string v0, "Failed to disable packet tracing("

    .line 23
    const-string v1, ")"

    .line 25
    invoke-static {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_1
    return p0
.end method

.method public final enablePacketTracing(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 7
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->enableTlsPacketTracing(Ljava/lang/String;)I

    .line 10
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 16
    :cond_0
    const/4 p0, -0x6

    .line 17
    :goto_0
    if-eqz p0, :cond_1

    .line 19
    sget-object p1, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->TAG:Ljava/lang/String;

    .line 21
    const-string v0, "Failed to enable packet tracing("

    .line 23
    const-string v1, ")"

    .line 25
    invoke-static {p0, v0, v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_1
    return p0
.end method

.method public final getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->mContext:Landroid/content/Context;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 7
    if-nez v1, :cond_0

    .line 9
    const-string/jumbo v1, "connectivity"

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 18
    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 22
    return-object p0
.end method

.method public final getOemNetdService()Lcom/android/internal/net/IOemNetd;
    .locals 0

    .line 1
    :try_start_0
    const-string/jumbo p0, "netd"

    .line 4
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 7
    move-result-object p0

    .line 8
    invoke-static {p0}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lcom/android/internal/net/IOemNetd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetd;

    .line 19
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    return-object p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    const/4 p0, 0x0

    .line 26
    return-object p0
.end method

.method public final initializeHandlerThread()V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    .line 3
    const-string v1, "PacketTracingHandler"

    .line 5
    const/16 v2, 0xa

    .line 7
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 10
    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 12
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 15
    new-instance v0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$PacketTracingHandler;

    .line 17
    iget-object v1, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 19
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, p0, v1}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$PacketTracingHandler;-><init>(Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;Landroid/os/Looper;)V

    .line 26
    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->mHandler:Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$PacketTracingHandler;

    .line 28
    return-void
.end method

.method public final registerNetworkCallback()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    .line 11
    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 22
    move-result-object v0

    .line 23
    const/16 v1, 0xc

    .line 25
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 36
    move-result-object v0

    .line 37
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 39
    invoke-virtual {v1, v0, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 42
    return v2
.end method

.method public final sendMessageToHandler(ILcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->mHandler:Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$PacketTracingHandler;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 8
    move-result-object p1

    .line 9
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->mHandler:Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$PacketTracingHandler;

    .line 11
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 14
    :cond_0
    return-void
.end method

.method public final startTracingPackets(Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->sendMessageToHandler(ILcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;)V

    .line 5
    return-void
.end method

.method public final stopTracingPackets(Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->sendMessageToHandler(ILcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;)V

    .line 5
    return-void
.end method

.method public final unregisterNetworkCallback()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 12
    move-result-object v0

    .line 13
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 15
    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 18
    const/4 p0, 0x1

    .line 19
    return p0
.end method

.method public final updateNetworkInterfaceData(IZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->mEndpointMonitor:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->updateNetworkInterfaceData(II)I

    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 9
    sget-object p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->TAG:Ljava/lang/String;

    .line 11
    const-string p2, "Failed to set ethernet status for interface index="

    .line 13
    invoke-static {p1, p2, p0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_0
    return-void
.end method
