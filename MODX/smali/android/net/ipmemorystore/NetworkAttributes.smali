.class public Landroid/net/ipmemorystore/NetworkAttributes;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field private static final DBG:Z = true

.field private static final NULL_MATCH_WEIGHT:F = 0.25f

.field public static final TOTAL_WEIGHT:F = 850.0f

.field private static final TOTAL_WEIGHT_CUTOFF:F = 520.0f

.field private static final WEIGHT_ASSIGNEDV4ADDR:F = 300.0f

.field private static final WEIGHT_ASSIGNEDV4ADDREXPIRY:F = 0.0f

.field private static final WEIGHT_CLUSTER:F = 300.0f

.field private static final WEIGHT_DNSADDRESSES:F = 200.0f

.field private static final WEIGHT_MTU:F = 50.0f

.field private static final WEIGHT_V6PROVLOSSQUIRK:F


# instance fields
.field public final assignedV4Address:Ljava/net/Inet4Address;

.field public final assignedV4AddressExpiry:Ljava/lang/Long;

.field public final cluster:Ljava/lang/String;

.field public final dnsAddresses:Ljava/util/List;

.field public final ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

.field public final mtu:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/net/ipmemorystore/NetworkAttributesParcelable;)V
    .locals 8

    .line 11
    iget-object v0, p1, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->assignedV4Address:[B

    invoke-static {v0}, Landroid/net/ipmemorystore/NetworkAttributes;->getByAddressOrNull([B)Ljava/net/InetAddress;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/net/Inet4Address;

    .line 12
    iget-wide v0, p1, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->assignedV4AddressExpiry:J

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    const/4 v4, 0x0

    if-lez v3, :cond_0

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    iget-object v0, p1, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->cluster:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->dnsAddresses:[Landroid/net/ipmemorystore/Blob;

    .line 14
    invoke-static {v1}, Landroid/net/ipmemorystore/NetworkAttributes;->blobArrayToInetAddressList([Landroid/net/ipmemorystore/Blob;)Ljava/util/List;

    move-result-object v5

    .line 15
    iget v1, p1, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->mtu:I

    if-ltz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, v4

    :goto_1
    iget-object p1, p1, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;

    .line 16
    invoke-static {p1}, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->fromStableParcelable(Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;)Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    move-result-object v7

    move-object v1, p0

    move-object v4, v0

    .line 17
    invoke-direct/range {v1 .. v7}, Landroid/net/ipmemorystore/NetworkAttributes;-><init>(Ljava/net/Inet4Address;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/Inet4Address;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p5, :cond_1

    .line 2
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MTU can\'t be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 3
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "lease expiry can\'t be negative or zero"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_3
    :goto_1
    iput-object p1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    .line 6
    iput-object p2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    .line 7
    iput-object p3, p0, Landroid/net/ipmemorystore/NetworkAttributes;->cluster:Ljava/lang/String;

    if-nez p4, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    .line 8
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    .line 9
    iput-object p5, p0, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    .line 10
    iput-object p6, p0, Landroid/net/ipmemorystore/NetworkAttributes;->ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    return-void
.end method

.method private static blobArrayToInetAddressList([Landroid/net/ipmemorystore/Blob;)Ljava/util/List;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    array-length v1, p0

    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    array-length v1, p0

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_2

    .line 15
    aget-object v3, p0, v2

    .line 17
    iget-object v3, v3, Landroid/net/ipmemorystore/Blob;->data:[B

    .line 19
    invoke-static {v3}, Landroid/net/ipmemorystore/NetworkAttributes;->getByAddressOrNull([B)Ljava/net/InetAddress;

    .line 22
    move-result-object v3

    .line 23
    if-eqz v3, :cond_1

    .line 25
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    return-object v0
.end method

.method private static getByAddressOrNull([B)Ljava/net/InetAddress;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p0

    .line 10
    :catch_0
    return-object v0
.end method

.method private static inetAddressListToBlobArray(Ljava/util/List;)[Landroid/net/ipmemorystore/Blob;
    .locals 5

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 15
    move-result v3

    .line 16
    if-ge v2, v3, :cond_2

    .line 18
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Ljava/net/InetAddress;

    .line 24
    if-nez v3, :cond_1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    new-instance v4, Landroid/net/ipmemorystore/Blob;

    .line 29
    invoke-direct {v4}, Landroid/net/ipmemorystore/Blob;-><init>()V

    .line 32
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    .line 35
    move-result-object v3

    .line 36
    iput-object v3, v4, Landroid/net/ipmemorystore/Blob;->data:[B

    .line 38
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    new-array p0, v1, [Landroid/net/ipmemorystore/Blob;

    .line 46
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 49
    move-result-object p0

    .line 50
    check-cast p0, [Landroid/net/ipmemorystore/Blob;

    .line 52
    return-object p0
.end method

.method private samenessContribution(FLjava/lang/Object;Ljava/lang/Object;)F
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    if-nez p2, :cond_1

    .line 4
    if-nez p3, :cond_0

    .line 6
    const/high16 p0, 0x3e800000    # 0.25f

    .line 8
    mul-float/2addr p0, p1

    .line 9
    :cond_0
    return p0

    .line 10
    :cond_1
    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_2

    .line 16
    goto :goto_0

    .line 17
    :cond_2
    move p1, p0

    .line 18
    :goto_0
    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/net/ipmemorystore/NetworkAttributes;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Landroid/net/ipmemorystore/NetworkAttributes;

    .line 9
    iget-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    .line 11
    iget-object v2, p1, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    .line 13
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 19
    iget-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    .line 21
    iget-object v2, p1, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    .line 23
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->cluster:Ljava/lang/String;

    .line 31
    iget-object v2, p1, Landroid/net/ipmemorystore/NetworkAttributes;->cluster:Ljava/lang/String;

    .line 33
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    .line 41
    iget-object v2, p1, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    .line 43
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    .line 51
    iget-object v2, p1, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    .line 53
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_1

    .line 59
    iget-object p0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    .line 61
    iget-object p1, p1, Landroid/net/ipmemorystore/NetworkAttributes;->ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    .line 63
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    move-result p0

    .line 67
    if-eqz p0, :cond_1

    .line 69
    const/4 v1, 0x1

    .line 70
    :cond_1
    return v1
.end method

.method public getNetworkGroupSamenessConfidence(Landroid/net/ipmemorystore/NetworkAttributes;)F
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    .line 3
    iget-object v1, p1, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    .line 5
    const/high16 v2, 0x43960000    # 300.0f

    .line 7
    invoke-direct {p0, v2, v0, v1}, Landroid/net/ipmemorystore/NetworkAttributes;->samenessContribution(FLjava/lang/Object;Ljava/lang/Object;)F

    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    .line 13
    iget-object v3, p1, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-direct {p0, v4, v1, v3}, Landroid/net/ipmemorystore/NetworkAttributes;->samenessContribution(FLjava/lang/Object;Ljava/lang/Object;)F

    .line 19
    move-result v1

    .line 20
    add-float/2addr v0, v1

    .line 21
    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->cluster:Ljava/lang/String;

    .line 23
    iget-object v3, p1, Landroid/net/ipmemorystore/NetworkAttributes;->cluster:Ljava/lang/String;

    .line 25
    invoke-direct {p0, v2, v1, v3}, Landroid/net/ipmemorystore/NetworkAttributes;->samenessContribution(FLjava/lang/Object;Ljava/lang/Object;)F

    .line 28
    move-result v1

    .line 29
    add-float/2addr v0, v1

    .line 30
    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    .line 32
    iget-object v2, p1, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    .line 34
    const/high16 v3, 0x43480000    # 200.0f

    .line 36
    invoke-direct {p0, v3, v1, v2}, Landroid/net/ipmemorystore/NetworkAttributes;->samenessContribution(FLjava/lang/Object;Ljava/lang/Object;)F

    .line 39
    move-result v1

    .line 40
    add-float/2addr v0, v1

    .line 41
    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    .line 43
    iget-object v2, p1, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    .line 45
    const/high16 v3, 0x42480000    # 50.0f

    .line 47
    invoke-direct {p0, v3, v1, v2}, Landroid/net/ipmemorystore/NetworkAttributes;->samenessContribution(FLjava/lang/Object;Ljava/lang/Object;)F

    .line 50
    move-result v1

    .line 51
    add-float/2addr v0, v1

    .line 52
    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    .line 54
    iget-object p1, p1, Landroid/net/ipmemorystore/NetworkAttributes;->ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    .line 56
    invoke-direct {p0, v4, v1, p1}, Landroid/net/ipmemorystore/NetworkAttributes;->samenessContribution(FLjava/lang/Object;Ljava/lang/Object;)F

    .line 59
    move-result p0

    .line 60
    add-float/2addr v0, p0

    .line 61
    const/high16 p0, 0x44020000    # 520.0f

    .line 63
    cmpg-float p1, v0, p0

    .line 65
    if-gez p1, :cond_0

    .line 67
    const/high16 p0, 0x44820000    # 1040.0f

    .line 69
    div-float/2addr v0, p0

    .line 70
    return v0

    .line 71
    :cond_0
    sub-float/2addr v0, p0

    .line 72
    const/high16 p0, 0x43a50000    # 330.0f

    .line 74
    div-float/2addr v0, p0

    .line 75
    const/high16 p0, 0x40000000    # 2.0f

    .line 77
    div-float/2addr v0, p0

    .line 78
    const/high16 p0, 0x3f000000    # 0.5f

    .line 80
    add-float/2addr v0, p0

    .line 81
    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    .line 3
    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    .line 5
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->cluster:Ljava/lang/String;

    .line 7
    iget-object v3, p0, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    .line 9
    iget-object v4, p0, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    .line 11
    iget-object v5, p0, Landroid/net/ipmemorystore/NetworkAttributes;->ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    .line 13
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    .line 7
    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->cluster:Ljava/lang/String;

    .line 11
    if-nez v0, :cond_0

    .line 13
    iget-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    .line 15
    if-nez v0, :cond_0

    .line 17
    iget-object v0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    .line 19
    if-nez v0, :cond_0

    .line 21
    iget-object p0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    .line 23
    if-nez p0, :cond_0

    .line 25
    const/4 p0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0
.end method

.method public toParcelable()Landroid/net/ipmemorystore/NetworkAttributesParcelable;
    .locals 5

    .line 1
    new-instance v0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;

    .line 3
    invoke-direct {v0}, Landroid/net/ipmemorystore/NetworkAttributesParcelable;-><init>()V

    .line 6
    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v1, :cond_0

    .line 11
    move-object v1, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v1}, Ljava/net/Inet4Address;->getAddress()[B

    .line 16
    move-result-object v1

    .line 17
    :goto_0
    iput-object v1, v0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->assignedV4Address:[B

    .line 19
    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    .line 21
    if-nez v1, :cond_1

    .line 23
    const-wide/16 v3, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 29
    move-result-wide v3

    .line 30
    :goto_1
    iput-wide v3, v0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->assignedV4AddressExpiry:J

    .line 32
    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->cluster:Ljava/lang/String;

    .line 34
    iput-object v1, v0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->cluster:Ljava/lang/String;

    .line 36
    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    .line 38
    invoke-static {v1}, Landroid/net/ipmemorystore/NetworkAttributes;->inetAddressListToBlobArray(Ljava/util/List;)[Landroid/net/ipmemorystore/Blob;

    .line 41
    move-result-object v1

    .line 42
    iput-object v1, v0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->dnsAddresses:[Landroid/net/ipmemorystore/Blob;

    .line 44
    iget-object v1, p0, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    .line 46
    if-nez v1, :cond_2

    .line 48
    const/4 v1, -0x1

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 53
    move-result v1

    .line 54
    :goto_2
    iput v1, v0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->mtu:I

    .line 56
    iget-object p0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    .line 58
    if-nez p0, :cond_3

    .line 60
    goto :goto_3

    .line 61
    :cond_3
    invoke-virtual {p0}, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->toStableParcelable()Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;

    .line 64
    move-result-object v2

    .line 65
    :goto_3
    iput-object v2, v0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirkParcelable;

    .line 67
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/StringJoiner;

    .line 3
    const-string/jumbo v1, "{"

    .line 6
    const-string/jumbo v2, "}"

    .line 9
    const-string v3, " "

    .line 11
    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    .line 21
    if-eqz v2, :cond_0

    .line 23
    const-string v2, "assignedV4Addr :"

    .line 25
    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 28
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4Address:Ljava/net/Inet4Address;

    .line 30
    invoke-virtual {v2}, Ljava/net/Inet4Address;->toString()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const-string v2, "assignedV4Addr"

    .line 40
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    :goto_0
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    .line 45
    if-eqz v2, :cond_1

    .line 47
    const-string v2, "assignedV4AddressExpiry :"

    .line 49
    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 52
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->assignedV4AddressExpiry:Ljava/lang/Long;

    .line 54
    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    const-string v2, "assignedV4AddressExpiry"

    .line 64
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :goto_1
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->cluster:Ljava/lang/String;

    .line 69
    if-eqz v2, :cond_2

    .line 71
    const-string/jumbo v2, "cluster :"

    .line 74
    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 77
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->cluster:Ljava/lang/String;

    .line 79
    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 82
    goto :goto_2

    .line 83
    :cond_2
    const-string/jumbo v2, "cluster"

    .line 86
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :goto_2
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    .line 91
    const-string v3, "]"

    .line 93
    if-eqz v2, :cond_4

    .line 95
    const-string/jumbo v2, "dnsAddr : ["

    .line 98
    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 101
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->dnsAddresses:Ljava/util/List;

    .line 103
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 106
    move-result-object v2

    .line 107
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    move-result v4

    .line 111
    if-eqz v4, :cond_3

    .line 113
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    move-result-object v4

    .line 117
    check-cast v4, Ljava/net/InetAddress;

    .line 119
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 126
    goto :goto_3

    .line 127
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 130
    goto :goto_4

    .line 131
    :cond_4
    const-string/jumbo v2, "dnsAddr"

    .line 134
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :goto_4
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    .line 139
    if-eqz v2, :cond_5

    .line 141
    const-string/jumbo v2, "mtu :"

    .line 144
    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 147
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->mtu:Ljava/lang/Integer;

    .line 149
    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 156
    goto :goto_5

    .line 157
    :cond_5
    const-string/jumbo v2, "mtu"

    .line 160
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    :goto_5
    iget-object v2, p0, Landroid/net/ipmemorystore/NetworkAttributes;->ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    .line 165
    if-eqz v2, :cond_6

    .line 167
    const-string/jumbo v2, "ipv6ProvisioningLossQuirk : ["

    .line 170
    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 173
    iget-object p0, p0, Landroid/net/ipmemorystore/NetworkAttributes;->ipv6ProvisioningLossQuirk:Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;

    .line 175
    invoke-virtual {p0}, Landroid/net/networkstack/aidl/quirks/IPv6ProvisioningLossQuirk;->toString()Ljava/lang/String;

    .line 178
    move-result-object p0

    .line 179
    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 182
    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 185
    goto :goto_6

    .line 186
    :cond_6
    const-string/jumbo p0, "ipv6ProvisioningLossQuirk"

    .line 189
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    :goto_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 195
    move-result p0

    .line 196
    if-nez p0, :cond_8

    .line 198
    const-string p0, "; Null fields : ["

    .line 200
    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 203
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 206
    move-result-object p0

    .line 207
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 210
    move-result v1

    .line 211
    if-eqz v1, :cond_7

    .line 213
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 216
    move-result-object v1

    .line 217
    check-cast v1, Ljava/lang/String;

    .line 219
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 222
    goto :goto_7

    .line 223
    :cond_7
    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 226
    :cond_8
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    .line 229
    move-result-object p0

    .line 230
    return-object p0
.end method
