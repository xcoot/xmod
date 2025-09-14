.class public abstract Lcom/android/server/connectivity/VpnIkev2Utils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static getRoutesFromTrafficSelectors(Ljava/util/List;)Ljava/util/Collection;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 10
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 22
    new-instance v2, Lcom/android/net/module/util/IpRange;

    .line 24
    iget-object v3, v1, Landroid/net/ipsec/ike/IkeTrafficSelector;->startingAddress:Ljava/net/InetAddress;

    .line 26
    iget-object v1, v1, Landroid/net/ipsec/ike/IkeTrafficSelector;->endingAddress:Ljava/net/InetAddress;

    .line 28
    invoke-direct {v2, v3, v1}, Lcom/android/net/module/util/IpRange;-><init>(Ljava/net/InetAddress;Ljava/net/InetAddress;)V

    .line 31
    invoke-virtual {v2}, Lcom/android/net/module/util/IpRange;->asIpPrefixes()Ljava/util/List;

    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object v1

    .line 39
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_0

    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Landroid/net/IpPrefix;

    .line 51
    new-instance v3, Landroid/net/RouteInfo;

    .line 53
    const/4 v4, 0x1

    .line 54
    const/4 v5, 0x0

    .line 55
    invoke-direct {v3, v2, v5, v5, v4}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    .line 58
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    return-object v0
.end method

.method public static parseIkeIdentification(Ljava/lang/String;)Landroid/net/ipsec/ike/IkeIdentification;
    .locals 3

    .line 1
    const-string v0, "@"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_3

    .line 9
    const-string v1, "@#"

    .line 11
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x2

    .line 16
    if-eqz v1, :cond_0

    .line 18
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    new-instance v0, Landroid/net/ipsec/ike/IkeKeyIdIdentification;

    .line 24
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeKeyIdIdentification;-><init>([B)V

    .line 31
    return-object v0

    .line 32
    :cond_0
    const-string v1, "@@"

    .line 34
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 40
    new-instance v0, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;

    .line 42
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;-><init>(Ljava/lang/String;)V

    .line 49
    return-object v0

    .line 50
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_2

    .line 56
    new-instance v0, Landroid/net/ipsec/ike/IkeFqdnIdentification;

    .line 58
    const/4 v1, 0x1

    .line 59
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 63
    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeFqdnIdentification;-><init>(Ljava/lang/String;)V

    .line 66
    return-object v0

    .line 67
    :cond_2
    new-instance v0, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;

    .line 69
    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;-><init>(Ljava/lang/String;)V

    .line 72
    return-object v0

    .line 73
    :cond_3
    invoke-static {p0}, Landroid/net/InetAddresses;->isNumericAddress(Ljava/lang/String;)Z

    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_6

    .line 79
    invoke-static {p0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 82
    move-result-object p0

    .line 83
    instance-of v0, p0, Ljava/net/Inet4Address;

    .line 85
    if-eqz v0, :cond_4

    .line 87
    new-instance v0, Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;

    .line 89
    check-cast p0, Ljava/net/Inet4Address;

    .line 91
    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;-><init>(Ljava/net/Inet4Address;)V

    .line 94
    return-object v0

    .line 95
    :cond_4
    instance-of v0, p0, Ljava/net/Inet6Address;

    .line 97
    if-eqz v0, :cond_5

    .line 99
    new-instance v0, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;

    .line 101
    check-cast p0, Ljava/net/Inet6Address;

    .line 103
    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;-><init>(Ljava/net/Inet6Address;)V

    .line 106
    return-object v0

    .line 107
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 109
    const-string v0, "IP version not supported"

    .line 111
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 114
    throw p0

    .line 115
    :cond_6
    const-string v0, ":"

    .line 117
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_7

    .line 123
    new-instance v0, Landroid/net/ipsec/ike/IkeKeyIdIdentification;

    .line 125
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 128
    move-result-object p0

    .line 129
    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeKeyIdIdentification;-><init>([B)V

    .line 132
    return-object v0

    .line 133
    :cond_7
    new-instance v0, Landroid/net/ipsec/ike/IkeFqdnIdentification;

    .line 135
    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeFqdnIdentification;-><init>(Ljava/lang/String;)V

    .line 138
    return-object v0
.end method
