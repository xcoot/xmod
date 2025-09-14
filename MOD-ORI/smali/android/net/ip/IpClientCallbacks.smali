.class public Landroid/net/ip/IpClientCallbacks;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public installPacketFilter([B)V
    .locals 0

    .line 1
    return-void
.end method

.method public onIpClientCreated(Landroid/net/ip/IIpClient;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onLinkPropertiesChange(Landroid/net/LinkProperties;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onNewDhcpResults(Landroid/net/DhcpResultsParcelable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onPostDhcpAction()V
    .locals 0

    .line 1
    return-void
.end method

.method public onPreDhcpAction()V
    .locals 0

    .line 1
    return-void
.end method

.method public onPreconnectionStart(Ljava/util/List;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onProvisioningFailure(Landroid/net/LinkProperties;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onProvisioningSuccess(Landroid/net/LinkProperties;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onQuit()V
    .locals 0

    .line 1
    return-void
.end method

.method public onReachabilityFailure(Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;)V
    .locals 0

    .line 1
    iget-object p1, p1, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;->message:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/net/ip/IpClientCallbacks;->onReachabilityLost(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onReachabilityLost(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setFallbackMulticastFilter(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public setMaxDtimMultiplier(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public setNeighborDiscoveryOffload(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public startReadPacketFilter()V
    .locals 0

    .line 1
    return-void
.end method
