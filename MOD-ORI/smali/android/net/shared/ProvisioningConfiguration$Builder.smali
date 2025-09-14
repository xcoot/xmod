.class public Landroid/net/shared/ProvisioningConfiguration$Builder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field protected mConfig:Landroid/net/shared/ProvisioningConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/net/shared/ProvisioningConfiguration;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/net/shared/ProvisioningConfiguration;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public build()Landroid/net/shared/ProvisioningConfiguration;
    .locals 2

    .line 1
    iget-object p0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    .line 2
    .line 3
    iget v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6ProvisioningMode:I

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    iget v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv4ProvisioningMode:I

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string v0, "IPv4 must be disabled in IPv6 link-localonly mode."

    .line 16
    .line 17
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0

    .line 21
    :cond_1
    :goto_0
    new-instance v0, Landroid/net/shared/ProvisioningConfiguration;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Landroid/net/shared/ProvisioningConfiguration;-><init>(Landroid/net/shared/ProvisioningConfiguration;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public withApfCapabilities(Landroid/net/apf/ApfCapabilities;)Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    .line 2
    .line 3
    iput-object p1, v0, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 4
    .line 5
    return-object p0
.end method

.method public withCreatorUid(I)Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    .line 2
    .line 3
    iput p1, v0, Landroid/net/shared/ProvisioningConfiguration;->mCreatorUid:I

    .line 4
    .line 5
    return-object p0
.end method

.method public withDhcpOptions(Ljava/util/List;)Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    .line 2
    .line 3
    iput-object p1, v0, Landroid/net/shared/ProvisioningConfiguration;->mDhcpOptions:Ljava/util/List;

    .line 4
    .line 5
    return-object p0
.end method

.method public withDisplayName(Ljava/lang/String;)Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    .line 2
    .line 3
    iput-object p1, v0, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public withHostnameSetting(I)Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    .line 2
    .line 3
    iput p1, v0, Landroid/net/shared/ProvisioningConfiguration;->mHostnameSetting:I

    .line 4
    .line 5
    return-object p0
.end method

.method public withInitialConfiguration(Landroid/net/shared/InitialConfiguration;)Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    .line 2
    .line 3
    iput-object p1, v0, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    .line 4
    .line 5
    return-object p0
.end method

.method public withIpv6LinkLocalOnly()Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    iput v1, v0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6ProvisioningMode:I

    .line 5
    .line 6
    return-object p0
.end method

.method public withLayer2Information(Landroid/net/shared/Layer2Information;)Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    .line 2
    .line 3
    iput-object p1, v0, Landroid/net/shared/ProvisioningConfiguration;->mLayer2Info:Landroid/net/shared/Layer2Information;

    .line 4
    .line 5
    return-object p0
.end method

.method public withNetwork(Landroid/net/Network;)Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    .line 2
    .line 3
    iput-object p1, v0, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    .line 4
    .line 5
    return-object p0
.end method

.method public withPreDhcpAction()Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    const/16 v1, 0x4650

    iput v1, v0, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    return-object p0
.end method

.method public withPreDhcpAction(I)Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    iput p1, v0, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    return-object p0
.end method

.method public withPreconnection()Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Landroid/net/shared/ProvisioningConfiguration;->mEnablePreconnection:Z

    .line 5
    .line 6
    return-object p0
.end method

.method public withProvisioningTimeoutMs(I)Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    .line 2
    .line 3
    iput p1, v0, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    .line 4
    .line 5
    return-object p0
.end method

.method public withRandomMacAddress()Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    .line 5
    .line 6
    return-object p0
.end method

.method public withScanResultInfo(Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;)Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    .line 2
    .line 3
    iput-object p1, v0, Landroid/net/shared/ProvisioningConfiguration;->mScanResultInfo:Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    .line 4
    .line 5
    return-object p0
.end method

.method public withStableMacAddress()Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    iput v1, v0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    .line 5
    .line 6
    return-object p0
.end method

.method public withStaticConfiguration(Landroid/net/StaticIpConfiguration;)Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput v1, v0, Landroid/net/shared/ProvisioningConfiguration;->mIPv4ProvisioningMode:I

    .line 5
    .line 6
    iput-object p1, v0, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 7
    .line 8
    return-object p0
.end method

.method public withUniqueEui64AddressesOnly()Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Landroid/net/shared/ProvisioningConfiguration;->mUniqueEui64AddressesOnly:Z

    .line 5
    .line 6
    return-object p0
.end method

.method public withoutIPv4()Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Landroid/net/shared/ProvisioningConfiguration;->mIPv4ProvisioningMode:I

    .line 5
    .line 6
    return-object p0
.end method

.method public withoutIPv6()Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6ProvisioningMode:I

    .line 5
    .line 6
    return-object p0
.end method

.method public withoutIpReachabilityMonitor()Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    .line 5
    .line 6
    return-object p0
.end method

.method public withoutMultinetworkPolicyTracker()Landroid/net/shared/ProvisioningConfiguration$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    .line 5
    .line 6
    return-object p0
.end method
