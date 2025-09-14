.class public Landroid/net/ipmemorystore/NetworkAttributes$Builder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field private mAssignedAddress:Ljava/net/Inet4Address;

.field private mAssignedAddressExpiry:Ljava/lang/Long;

.field private mCluster:Ljava/lang/String;

.field private mDnsAddresses:Ljava/util/List;

.field private mIpv6ProvLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

.field private mMtu:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/net/ipmemorystore/NetworkAttributes;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v0, p1, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    iput-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mAssignedAddress:Ljava/net/Inet4Address;

    .line 4
    iget-object v0, p1, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    iput-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mAssignedAddressExpiry:Ljava/lang/Long;

    .line 5
    iget-object v0, p1, Landroid/net/ipmemorystore/NetworkAttributes;->cluster:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mCluster:Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mDnsAddresses:Ljava/util/List;

    .line 7
    iget-object v0, p1, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    iput-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mMtu:Ljava/lang/Integer;

    .line 8
    iget-object p1, p1, Landroid/net/ipmemorystore/NetworkAttributes;->ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    iput-object p1, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mIpv6ProvLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    return-void
.end method


# virtual methods
.method public build()Landroid/net/ipmemorystore/NetworkAttributes;
    .locals 8

    .line 1
    new-instance v7, Landroid/net/ipmemorystore/NetworkAttributes;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mAssignedAddress:Ljava/net/Inet4Address;

    .line 4
    .line 5
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mAssignedAddressExpiry:Ljava/lang/Long;

    .line 6
    .line 7
    iget-object v3, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mCluster:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mDnsAddresses:Ljava/util/List;

    .line 10
    .line 11
    iget-object v5, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mMtu:Ljava/lang/Integer;

    .line 12
    .line 13
    iget-object v6, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mIpv6ProvLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    .line 14
    .line 15
    move-object v0, v7

    .line 16
    invoke-direct/range {v0 .. v6}, Landroid/net/ipmemorystore/NetworkAttributes;-><init>(Ljava/net/Inet4Address;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;)V

    .line 17
    .line 18
    .line 19
    return-object v7
.end method

.method public setAssignedV4Address(Ljava/net/Inet4Address;)Landroid/net/ipmemorystore/NetworkAttributes$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mAssignedAddress:Ljava/net/Inet4Address;

    .line 2
    .line 3
    return-object p0
.end method

.method public setAssignedV4AddressExpiry(Ljava/lang/Long;)Landroid/net/ipmemorystore/NetworkAttributes$Builder;
    .locals 4

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    const-string/jumbo p1, "lease expiry can\'t be negative or zero"

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p0

    .line 23
    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mAssignedAddressExpiry:Ljava/lang/Long;

    .line 24
    .line 25
    return-object p0
.end method

.method public setCluster(Ljava/lang/String;)Landroid/net/ipmemorystore/NetworkAttributes$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mCluster:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDnsAddresses(Ljava/util/List;)Landroid/net/ipmemorystore/NetworkAttributes$Builder;
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/net/InetAddress;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string p1, "Null DNS address"

    .line 25
    .line 26
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_1
    iput-object p1, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mDnsAddresses:Ljava/util/List;

    .line 31
    .line 32
    return-object p0
.end method

.method public setIpv6ProvLossQuirk(Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;)Landroid/net/ipmemorystore/NetworkAttributes$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mIpv6ProvLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    .line 2
    .line 3
    return-object p0
.end method

.method public setMtu(Ljava/lang/Integer;)Landroid/net/ipmemorystore/NetworkAttributes$Builder;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string p1, "MTU can\'t be negative"

    .line 13
    .line 14
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p0

    .line 18
    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/net/ipmemorystore/NetworkAttributes$Builder;->mMtu:Ljava/lang/Integer;

    .line 19
    .line 20
    return-object p0
.end method
