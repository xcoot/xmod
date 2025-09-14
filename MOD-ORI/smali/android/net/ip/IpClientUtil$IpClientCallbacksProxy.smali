.class public final Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;
.super Landroid/net/ip/IIpClientCallbacks$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCb:Landroid/net/ip/IpClientCallbacks;


# direct methods
.method public constructor <init>(Landroid/net/ip/IpClientCallbacks;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/ip/IIpClientCallbacks$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "9bd9d687ddb816baf1faabcad0d56ac15b22c56e"

    .line 2
    .line 3
    return-object p0
.end method

.method public final getInterfaceVersion()I
    .locals 0

    .line 1
    const/16 p0, 0x15

    .line 2
    .line 3
    return p0
.end method

.method public final installPacketFilter([B)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/net/ip/IpClientCallbacks;->installPacketFilter([B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onIpClientCreated(Landroid/net/ip/IIpClient;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/net/ip/IpClientCallbacks;->onIpClientCreated(Landroid/net/ip/IIpClient;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onLinkPropertiesChange(Landroid/net/LinkProperties;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    .line 2
    .line 3
    new-instance v0, Landroid/net/LinkProperties;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/net/ip/IpClientCallbacks;->onLinkPropertiesChange(Landroid/net/LinkProperties;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onNewDhcpResults(Landroid/net/DhcpResultsParcelable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/net/ip/IpClientCallbacks;->onNewDhcpResults(Landroid/net/DhcpResultsParcelable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onPostDhcpAction()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/net/ip/IpClientCallbacks;->onPostDhcpAction()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onPreDhcpAction()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/net/ip/IpClientCallbacks;->onPreDhcpAction()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onPreconnectionStart(Ljava/util/List;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/net/ip/IpClientCallbacks;->onPreconnectionStart(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onProvisioningFailure(Landroid/net/LinkProperties;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    .line 2
    .line 3
    new-instance v0, Landroid/net/LinkProperties;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/net/ip/IpClientCallbacks;->onProvisioningFailure(Landroid/net/LinkProperties;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onProvisioningSuccess(Landroid/net/LinkProperties;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    .line 2
    .line 3
    new-instance v0, Landroid/net/LinkProperties;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/net/ip/IpClientCallbacks;->onProvisioningSuccess(Landroid/net/LinkProperties;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onQuit()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/net/ip/IpClientCallbacks;->onQuit()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onReachabilityFailure(Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/net/ip/IpClientCallbacks;->onReachabilityFailure(Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onReachabilityLost(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/net/ip/IpClientCallbacks;->onReachabilityLost(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setFallbackMulticastFilter(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/net/ip/IpClientCallbacks;->setFallbackMulticastFilter(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setMaxDtimMultiplier(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/net/ip/IpClientCallbacks;->setMaxDtimMultiplier(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setNeighborDiscoveryOffload(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/net/ip/IpClientCallbacks;->setNeighborDiscoveryOffload(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final startReadPacketFilter()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/net/ip/IpClientCallbacks;->startReadPacketFilter()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
