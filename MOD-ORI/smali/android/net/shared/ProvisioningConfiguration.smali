.class public Landroid/net/shared/ProvisioningConfiguration;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field private static final DEFAULT_TIMEOUT_MS:I = 0x4650

.field public static final IPV6_ADDR_GEN_MODE_EUI64:I = 0x0

.field public static final IPV6_ADDR_GEN_MODE_STABLE_PRIVACY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ProvisioningConfiguration"

.field public static final VERSION_ADDED_PROVISIONING_ENUM:I = 0xc


# instance fields
.field public mApfCapabilities:Landroid/net/apf/ApfCapabilities;

.field public mCreatorUid:I

.field public mDhcpOptions:Ljava/util/List;

.field public mDisplayName:Ljava/lang/String;

.field public mEnablePreconnection:Z

.field public mHostnameSetting:I

.field public mIPv4ProvisioningMode:I

.field public mIPv6AddrGenMode:I

.field public mIPv6ProvisioningMode:I

.field public mInitialConfig:Landroid/net/shared/InitialConfiguration;

.field public mLayer2Info:Landroid/net/shared/Layer2Information;

.field public mNetwork:Landroid/net/Network;

.field public mProvisioningTimeoutMs:I

.field public mRequestedPreDhcpActionMs:I

.field public mScanResultInfo:Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

.field public mStaticIpConfig:Landroid/net/StaticIpConfiguration;

.field public mUniqueEui64AddressesOnly:Z

.field public mUsingIpReachabilityMonitor:Z

.field public mUsingMultinetworkPolicyTracker:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mUniqueEui64AddressesOnly:Z

    .line 3
    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnablePreconnection:Z

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    .line 5
    iput-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    const/16 v2, 0x4650

    .line 6
    iput v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    const/4 v2, 0x2

    .line 7
    iput v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    const/4 v3, 0x0

    .line 8
    iput-object v3, p0, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    .line 9
    iput-object v3, p0, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    .line 10
    iput v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv4ProvisioningMode:I

    .line 11
    iput v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6ProvisioningMode:I

    .line 12
    iput v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mHostnameSetting:I

    return-void
.end method

.method public constructor <init>(Landroid/net/shared/ProvisioningConfiguration;)V
    .locals 4

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mUniqueEui64AddressesOnly:Z

    .line 15
    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnablePreconnection:Z

    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    .line 17
    iput-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    const/16 v2, 0x4650

    .line 18
    iput v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    const/4 v2, 0x2

    .line 19
    iput v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    const/4 v3, 0x0

    .line 20
    iput-object v3, p0, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    .line 21
    iput-object v3, p0, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    .line 22
    iput v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv4ProvisioningMode:I

    .line 23
    iput v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6ProvisioningMode:I

    .line 24
    iput v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mHostnameSetting:I

    .line 25
    iget-boolean v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mUniqueEui64AddressesOnly:Z

    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mUniqueEui64AddressesOnly:Z

    .line 26
    iget-boolean v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mEnablePreconnection:Z

    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnablePreconnection:Z

    .line 27
    iget-boolean v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    .line 28
    iget-boolean v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    .line 29
    iget v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    iput v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    .line 30
    iget-object v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    invoke-static {v0}, Landroid/net/shared/InitialConfiguration;->copy(Landroid/net/shared/InitialConfiguration;)Landroid/net/shared/InitialConfiguration;

    move-result-object v0

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    .line 31
    iget-object v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    if-nez v0, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    new-instance v3, Landroid/net/StaticIpConfiguration;

    iget-object v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    invoke-direct {v3, v0}, Landroid/net/StaticIpConfiguration;-><init>(Landroid/net/StaticIpConfiguration;)V

    :goto_0
    iput-object v3, p0, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 33
    iget-object v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 34
    iget v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    iput v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    .line 35
    iget v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    iput v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    .line 36
    iget-object v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    .line 37
    iget-object v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    .line 38
    iget v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mCreatorUid:I

    iput v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mCreatorUid:I

    .line 39
    iget-object v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mScanResultInfo:Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mScanResultInfo:Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    .line 40
    iget-object v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mLayer2Info:Landroid/net/shared/Layer2Information;

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mLayer2Info:Landroid/net/shared/Layer2Information;

    .line 41
    iget-object v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mDhcpOptions:Ljava/util/List;

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mDhcpOptions:Ljava/util/List;

    .line 42
    iget v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mIPv4ProvisioningMode:I

    iput v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv4ProvisioningMode:I

    .line 43
    iget v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mIPv6ProvisioningMode:I

    iput v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6ProvisioningMode:I

    .line 44
    iget p1, p1, Landroid/net/shared/ProvisioningConfiguration;->mHostnameSetting:I

    iput p1, p0, Landroid/net/shared/ProvisioningConfiguration;->mHostnameSetting:I

    return-void
.end method

.method private static dhcpOptionEquals(Landroid/net/networkstack/aidl/dhcp/DhcpOption;Landroid/net/networkstack/aidl/dhcp/DhcpOption;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p0, :cond_3

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_1
    iget-byte v2, p0, Landroid/net/networkstack/aidl/dhcp/DhcpOption;->type:B

    .line 12
    .line 13
    iget-byte v3, p1, Landroid/net/networkstack/aidl/dhcp/DhcpOption;->type:B

    .line 14
    .line 15
    if-ne v2, v3, :cond_2

    .line 16
    .line 17
    iget-object p0, p0, Landroid/net/networkstack/aidl/dhcp/DhcpOption;->value:[B

    .line 18
    .line 19
    iget-object p1, p1, Landroid/net/networkstack/aidl/dhcp/DhcpOption;->value:[B

    .line 20
    .line 21
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    move v0, v1

    .line 29
    :goto_0
    return v0

    .line 30
    :cond_3
    :goto_1
    return v1
.end method

.method private static dhcpOptionListEquals(Ljava/util/List;Ljava/util/List;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p0, :cond_5

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eq v2, v3, :cond_2

    .line 20
    .line 21
    return v1

    .line 22
    :cond_2
    move v2, v1

    .line 23
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-ge v2, v3, :cond_4

    .line 28
    .line 29
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Landroid/net/networkstack/aidl/dhcp/DhcpOption;

    .line 34
    .line 35
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Landroid/net/networkstack/aidl/dhcp/DhcpOption;

    .line 40
    .line 41
    invoke-static {v3, v4}, Landroid/net/shared/ProvisioningConfiguration;->dhcpOptionEquals(Landroid/net/networkstack/aidl/dhcp/DhcpOption;Landroid/net/networkstack/aidl/dhcp/DhcpOption;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_3

    .line 46
    .line 47
    return v1

    .line 48
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_4
    return v0

    .line 52
    :cond_5
    :goto_1
    return v1
.end method

.method public static fromStableParcelable(Landroid/net/ProvisioningConfigurationParcelable;I)Landroid/net/shared/ProvisioningConfiguration;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    new-instance v1, Landroid/net/shared/ProvisioningConfiguration;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/net/shared/ProvisioningConfiguration;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->uniqueEui64AddressesOnly:Z

    .line 11
    .line 12
    iput-boolean v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mUniqueEui64AddressesOnly:Z

    .line 13
    .line 14
    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->enablePreconnection:Z

    .line 15
    .line 16
    iput-boolean v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mEnablePreconnection:Z

    .line 17
    .line 18
    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->usingMultinetworkPolicyTracker:Z

    .line 19
    .line 20
    iput-boolean v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    .line 21
    .line 22
    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->usingIpReachabilityMonitor:Z

    .line 23
    .line 24
    iput-boolean v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    .line 25
    .line 26
    iget v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->requestedPreDhcpActionMs:I

    .line 27
    .line 28
    iput v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    .line 29
    .line 30
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->initialConfig:Landroid/net/InitialConfigurationParcelable;

    .line 31
    .line 32
    invoke-static {v2}, Landroid/net/shared/InitialConfiguration;->fromStableParcelable(Landroid/net/InitialConfigurationParcelable;)Landroid/net/shared/InitialConfiguration;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iput-object v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    .line 37
    .line 38
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->staticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 39
    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    move-object v2, v0

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    new-instance v2, Landroid/net/StaticIpConfiguration;

    .line 45
    .line 46
    iget-object v3, p0, Landroid/net/ProvisioningConfigurationParcelable;->staticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 47
    .line 48
    invoke-direct {v2, v3}, Landroid/net/StaticIpConfiguration;-><init>(Landroid/net/StaticIpConfiguration;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    iput-object v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 52
    .line 53
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->apfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 54
    .line 55
    iput-object v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 56
    .line 57
    iget v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->provisioningTimeoutMs:I

    .line 58
    .line 59
    iput v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    .line 60
    .line 61
    iget v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->ipv6AddrGenMode:I

    .line 62
    .line 63
    iput v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    .line 64
    .line 65
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->network:Landroid/net/Network;

    .line 66
    .line 67
    iput-object v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    .line 68
    .line 69
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->displayName:Ljava/lang/String;

    .line 70
    .line 71
    iput-object v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    .line 72
    .line 73
    iget v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->creatorUid:I

    .line 74
    .line 75
    iput v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mCreatorUid:I

    .line 76
    .line 77
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->scanResultInfo:Landroid/net/ScanResultInfoParcelable;

    .line 78
    .line 79
    invoke-static {v2}, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->fromStableParcelable(Landroid/net/ScanResultInfoParcelable;)Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iput-object v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mScanResultInfo:Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    .line 84
    .line 85
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->layer2Info:Landroid/net/Layer2InformationParcelable;

    .line 86
    .line 87
    invoke-static {v2}, Landroid/net/shared/Layer2Information;->fromStableParcelable(Landroid/net/Layer2InformationParcelable;)Landroid/net/shared/Layer2Information;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    iput-object v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mLayer2Info:Landroid/net/shared/Layer2Information;

    .line 92
    .line 93
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->options:Ljava/util/List;

    .line 94
    .line 95
    if-nez v2, :cond_2

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 99
    .line 100
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->options:Ljava/util/List;

    .line 101
    .line 102
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 103
    .line 104
    .line 105
    :goto_1
    iput-object v0, v1, Landroid/net/shared/ProvisioningConfiguration;->mDhcpOptions:Ljava/util/List;

    .line 106
    .line 107
    const/16 v0, 0xc

    .line 108
    .line 109
    if-ge p1, v0, :cond_4

    .line 110
    .line 111
    iget-boolean p1, p0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv4:Z

    .line 112
    .line 113
    if-eqz p1, :cond_3

    .line 114
    .line 115
    const/4 p1, 0x2

    .line 116
    goto :goto_2

    .line 117
    :cond_3
    const/4 p1, 0x0

    .line 118
    :goto_2
    iput p1, v1, Landroid/net/shared/ProvisioningConfiguration;->mIPv4ProvisioningMode:I

    .line 119
    .line 120
    iget-boolean p1, p0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv6:Z

    .line 121
    .line 122
    iput p1, v1, Landroid/net/shared/ProvisioningConfiguration;->mIPv6ProvisioningMode:I

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_4
    iget p1, p0, Landroid/net/ProvisioningConfigurationParcelable;->ipv4ProvisioningMode:I

    .line 126
    .line 127
    iput p1, v1, Landroid/net/shared/ProvisioningConfiguration;->mIPv4ProvisioningMode:I

    .line 128
    .line 129
    iget p1, p0, Landroid/net/ProvisioningConfigurationParcelable;->ipv6ProvisioningMode:I

    .line 130
    .line 131
    iput p1, v1, Landroid/net/shared/ProvisioningConfiguration;->mIPv6ProvisioningMode:I

    .line 132
    .line 133
    :goto_3
    iget p0, p0, Landroid/net/ProvisioningConfigurationParcelable;->hostnameSetting:I

    .line 134
    .line 135
    iput p0, v1, Landroid/net/shared/ProvisioningConfiguration;->mHostnameSetting:I

    .line 136
    .line 137
    return-object v1
.end method

.method public static ipv4ProvisioningModeToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    const-string/jumbo p0, "unknown"

    .line 10
    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    const-string/jumbo p0, "dhcp"

    .line 14
    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    const-string/jumbo p0, "static"

    .line 18
    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_2
    const-string/jumbo p0, "disabled"

    .line 22
    .line 23
    .line 24
    return-object p0
.end method

.method public static ipv6ProvisioningModeToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    const-string/jumbo p0, "unknown"

    .line 10
    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    const-string/jumbo p0, "link-local"

    .line 14
    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    const-string/jumbo p0, "slaac"

    .line 18
    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_2
    const-string/jumbo p0, "disabled"

    .line 22
    .line 23
    .line 24
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/net/shared/ProvisioningConfiguration;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Landroid/net/shared/ProvisioningConfiguration;

    .line 8
    .line 9
    iget-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mUniqueEui64AddressesOnly:Z

    .line 10
    .line 11
    iget-boolean v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mUniqueEui64AddressesOnly:Z

    .line 12
    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    iget-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnablePreconnection:Z

    .line 16
    .line 17
    iget-boolean v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mEnablePreconnection:Z

    .line 18
    .line 19
    if-ne v0, v2, :cond_1

    .line 20
    .line 21
    iget-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    .line 22
    .line 23
    iget-boolean v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    .line 24
    .line 25
    if-ne v0, v2, :cond_1

    .line 26
    .line 27
    iget-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    .line 28
    .line 29
    iget-boolean v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    .line 30
    .line 31
    if-ne v0, v2, :cond_1

    .line 32
    .line 33
    iget v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    .line 34
    .line 35
    iget v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    .line 36
    .line 37
    if-ne v0, v2, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    .line 40
    .line 41
    iget-object v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    .line 42
    .line 43
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 50
    .line 51
    iget-object v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 52
    .line 53
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 60
    .line 61
    iget-object v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 62
    .line 63
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    iget v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    .line 70
    .line 71
    iget v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    .line 72
    .line 73
    if-ne v0, v2, :cond_1

    .line 74
    .line 75
    iget v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    .line 76
    .line 77
    iget v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    .line 78
    .line 79
    if-ne v0, v2, :cond_1

    .line 80
    .line 81
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    .line 82
    .line 83
    iget-object v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    .line 84
    .line 85
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_1

    .line 90
    .line 91
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    .line 92
    .line 93
    iget-object v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_1

    .line 100
    .line 101
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mScanResultInfo:Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    .line 102
    .line 103
    iget-object v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mScanResultInfo:Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    .line 104
    .line 105
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_1

    .line 110
    .line 111
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mLayer2Info:Landroid/net/shared/Layer2Information;

    .line 112
    .line 113
    iget-object v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mLayer2Info:Landroid/net/shared/Layer2Information;

    .line 114
    .line 115
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_1

    .line 120
    .line 121
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mDhcpOptions:Ljava/util/List;

    .line 122
    .line 123
    iget-object v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mDhcpOptions:Ljava/util/List;

    .line 124
    .line 125
    invoke-static {v0, v2}, Landroid/net/shared/ProvisioningConfiguration;->dhcpOptionListEquals(Ljava/util/List;Ljava/util/List;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_1

    .line 130
    .line 131
    iget v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv4ProvisioningMode:I

    .line 132
    .line 133
    iget v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mIPv4ProvisioningMode:I

    .line 134
    .line 135
    if-ne v0, v2, :cond_1

    .line 136
    .line 137
    iget v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6ProvisioningMode:I

    .line 138
    .line 139
    iget v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mIPv6ProvisioningMode:I

    .line 140
    .line 141
    if-ne v0, v2, :cond_1

    .line 142
    .line 143
    iget v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mCreatorUid:I

    .line 144
    .line 145
    iget v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mCreatorUid:I

    .line 146
    .line 147
    if-ne v0, v2, :cond_1

    .line 148
    .line 149
    iget p0, p0, Landroid/net/shared/ProvisioningConfiguration;->mHostnameSetting:I

    .line 150
    .line 151
    iget p1, p1, Landroid/net/shared/ProvisioningConfiguration;->mHostnameSetting:I

    .line 152
    .line 153
    if-ne p0, p1, :cond_1

    .line 154
    .line 155
    const/4 v1, 0x1

    .line 156
    :cond_1
    return v1
.end method

.method public isValid()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/net/shared/InitialConfiguration;->isValid()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    :goto_1
    return p0
.end method

.method public toStableParcelable()Landroid/net/ProvisioningConfigurationParcelable;
    .locals 5

    .line 1
    new-instance v0, Landroid/net/ProvisioningConfigurationParcelable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/ProvisioningConfigurationParcelable;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv4ProvisioningMode:I

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    move v4, v3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v4, v2

    .line 15
    :goto_0
    iput-boolean v4, v0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv4:Z

    .line 16
    .line 17
    iput v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->ipv4ProvisioningMode:I

    .line 18
    .line 19
    iget v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6ProvisioningMode:I

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    move v2, v3

    .line 24
    :cond_1
    iput-boolean v2, v0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv6:Z

    .line 25
    .line 26
    iput v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->ipv6ProvisioningMode:I

    .line 27
    .line 28
    iget-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mUniqueEui64AddressesOnly:Z

    .line 29
    .line 30
    iput-boolean v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->uniqueEui64AddressesOnly:Z

    .line 31
    .line 32
    iget-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnablePreconnection:Z

    .line 33
    .line 34
    iput-boolean v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->enablePreconnection:Z

    .line 35
    .line 36
    iget-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    .line 37
    .line 38
    iput-boolean v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->usingMultinetworkPolicyTracker:Z

    .line 39
    .line 40
    iget-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    .line 41
    .line 42
    iput-boolean v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->usingIpReachabilityMonitor:Z

    .line 43
    .line 44
    iget v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    .line 45
    .line 46
    iput v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->requestedPreDhcpActionMs:I

    .line 47
    .line 48
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    if-nez v1, :cond_2

    .line 52
    .line 53
    move-object v1, v2

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {v1}, Landroid/net/shared/InitialConfiguration;->toStableParcelable()Landroid/net/InitialConfigurationParcelable;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    :goto_1
    iput-object v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->initialConfig:Landroid/net/InitialConfigurationParcelable;

    .line 60
    .line 61
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 62
    .line 63
    if-nez v1, :cond_3

    .line 64
    .line 65
    move-object v1, v2

    .line 66
    goto :goto_2

    .line 67
    :cond_3
    new-instance v1, Landroid/net/StaticIpConfiguration;

    .line 68
    .line 69
    iget-object v3, p0, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 70
    .line 71
    invoke-direct {v1, v3}, Landroid/net/StaticIpConfiguration;-><init>(Landroid/net/StaticIpConfiguration;)V

    .line 72
    .line 73
    .line 74
    :goto_2
    iput-object v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->staticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 75
    .line 76
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 77
    .line 78
    iput-object v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->apfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 79
    .line 80
    iget v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    .line 81
    .line 82
    iput v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->provisioningTimeoutMs:I

    .line 83
    .line 84
    iget v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    .line 85
    .line 86
    iput v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->ipv6AddrGenMode:I

    .line 87
    .line 88
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    .line 89
    .line 90
    iput-object v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->network:Landroid/net/Network;

    .line 91
    .line 92
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    .line 93
    .line 94
    iput-object v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->displayName:Ljava/lang/String;

    .line 95
    .line 96
    iget v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mCreatorUid:I

    .line 97
    .line 98
    iput v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->creatorUid:I

    .line 99
    .line 100
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mScanResultInfo:Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    .line 101
    .line 102
    if-nez v1, :cond_4

    .line 103
    .line 104
    move-object v1, v2

    .line 105
    goto :goto_3

    .line 106
    :cond_4
    invoke-virtual {v1}, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->toStableParcelable()Landroid/net/ScanResultInfoParcelable;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    :goto_3
    iput-object v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->scanResultInfo:Landroid/net/ScanResultInfoParcelable;

    .line 111
    .line 112
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mLayer2Info:Landroid/net/shared/Layer2Information;

    .line 113
    .line 114
    if-nez v1, :cond_5

    .line 115
    .line 116
    move-object v1, v2

    .line 117
    goto :goto_4

    .line 118
    :cond_5
    invoke-virtual {v1}, Landroid/net/shared/Layer2Information;->toStableParcelable()Landroid/net/Layer2InformationParcelable;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    :goto_4
    iput-object v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->layer2Info:Landroid/net/Layer2InformationParcelable;

    .line 123
    .line 124
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mDhcpOptions:Ljava/util/List;

    .line 125
    .line 126
    if-nez v1, :cond_6

    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    .line 130
    .line 131
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mDhcpOptions:Ljava/util/List;

    .line 132
    .line 133
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 134
    .line 135
    .line 136
    :goto_5
    iput-object v2, v0, Landroid/net/ProvisioningConfigurationParcelable;->options:Ljava/util/List;

    .line 137
    .line 138
    iget p0, p0, Landroid/net/shared/ProvisioningConfiguration;->mHostnameSetting:I

    .line 139
    .line 140
    iput p0, v0, Landroid/net/ProvisioningConfigurationParcelable;->hostnameSetting:I

    .line 141
    .line 142
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv4ProvisioningMode:I

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/shared/ProvisioningConfiguration;->ipv4ProvisioningModeToString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6ProvisioningMode:I

    .line 8
    .line 9
    invoke-static {v1}, Landroid/net/shared/ProvisioningConfiguration;->ipv6ProvisioningModeToString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Ljava/util/StringJoiner;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const-string/jumbo v4, "{"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const-string/jumbo v4, "}"

    .line 31
    .line 32
    .line 33
    const-string v5, ", "

    .line 34
    .line 35
    invoke-direct {v2, v5, v3, v4}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string/jumbo v4, "mUniqueEui64AddressesOnly: "

    .line 41
    .line 42
    .line 43
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-boolean v4, p0, Landroid/net/shared/ProvisioningConfiguration;->mUniqueEui64AddressesOnly:Z

    .line 47
    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string/jumbo v4, "mEnablePreconnection: "

    .line 62
    .line 63
    .line 64
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-boolean v4, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnablePreconnection:Z

    .line 68
    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string/jumbo v4, "mUsingMultinetworkPolicyTracker: "

    .line 83
    .line 84
    .line 85
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-boolean v4, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    .line 89
    .line 90
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string/jumbo v4, "mUsingIpReachabilityMonitor: "

    .line 104
    .line 105
    .line 106
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-boolean v4, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    .line 110
    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string/jumbo v4, "mRequestedPreDhcpActionMs: "

    .line 125
    .line 126
    .line 127
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget v4, p0, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    .line 131
    .line 132
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string/jumbo v4, "mInitialConfig: "

    .line 146
    .line 147
    .line 148
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget-object v4, p0, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    .line 152
    .line 153
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string/jumbo v4, "mStaticIpConfig: "

    .line 167
    .line 168
    .line 169
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-object v4, p0, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 173
    .line 174
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    const-string/jumbo v4, "mApfCapabilities: "

    .line 188
    .line 189
    .line 190
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    iget-object v4, p0, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 194
    .line 195
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    const-string/jumbo v4, "mProvisioningTimeoutMs: "

    .line 209
    .line 210
    .line 211
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    iget v4, p0, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    .line 215
    .line 216
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    const-string/jumbo v4, "mIPv6AddrGenMode: "

    .line 230
    .line 231
    .line 232
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    iget v4, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    .line 236
    .line 237
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    const-string/jumbo v4, "mNetwork: "

    .line 251
    .line 252
    .line 253
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    iget-object v4, p0, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    .line 257
    .line 258
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    const-string/jumbo v4, "mDisplayName: "

    .line 272
    .line 273
    .line 274
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    iget-object v4, p0, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    .line 278
    .line 279
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    new-instance v3, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    const-string/jumbo v4, "mCreatorUid:"

    .line 293
    .line 294
    .line 295
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    iget v4, p0, Landroid/net/shared/ProvisioningConfiguration;->mCreatorUid:I

    .line 299
    .line 300
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    const-string/jumbo v4, "mScanResultInfo: "

    .line 314
    .line 315
    .line 316
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    iget-object v4, p0, Landroid/net/shared/ProvisioningConfiguration;->mScanResultInfo:Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    .line 320
    .line 321
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    new-instance v3, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    const-string/jumbo v4, "mLayer2Info: "

    .line 335
    .line 336
    .line 337
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    iget-object v4, p0, Landroid/net/shared/ProvisioningConfiguration;->mLayer2Info:Landroid/net/shared/Layer2Information;

    .line 341
    .line 342
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v3

    .line 349
    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 350
    .line 351
    .line 352
    move-result-object v2

    .line 353
    new-instance v3, Ljava/lang/StringBuilder;

    .line 354
    .line 355
    const-string/jumbo v4, "mDhcpOptions: "

    .line 356
    .line 357
    .line 358
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    iget-object v4, p0, Landroid/net/shared/ProvisioningConfiguration;->mDhcpOptions:Ljava/util/List;

    .line 362
    .line 363
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v3

    .line 370
    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    new-instance v3, Ljava/lang/StringBuilder;

    .line 375
    .line 376
    const-string/jumbo v4, "mIPv4ProvisioningMode: "

    .line 377
    .line 378
    .line 379
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-virtual {v2, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    .line 394
    .line 395
    const-string/jumbo v3, "mIPv6ProvisioningMode: "

    .line 396
    .line 397
    .line 398
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    .line 413
    .line 414
    const-string/jumbo v2, "mHostnameSetting: "

    .line 415
    .line 416
    .line 417
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    iget p0, p0, Landroid/net/shared/ProvisioningConfiguration;->mHostnameSetting:I

    .line 421
    .line 422
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object p0

    .line 429
    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 430
    .line 431
    .line 432
    move-result-object p0

    .line 433
    invoke-virtual {p0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object p0

    .line 437
    return-object p0
.end method
