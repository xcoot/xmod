.class public abstract Lcom/android/server/connectivity/VpnIkev2Utils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static getRoutesFromTrafficSelectors(Ljava/util/List;)Ljava/util/Collection;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 21
    .line 22
    new-instance v2, Lcom/android/net/module/util/IpRange;

    .line 23
    .line 24
    iget-object v3, v1, Landroid/net/ipsec/ike/IkeTrafficSelector;->startingAddress:Ljava/net/InetAddress;

    .line 25
    .line 26
    iget-object v1, v1, Landroid/net/ipsec/ike/IkeTrafficSelector;->endingAddress:Ljava/net/InetAddress;

    .line 27
    .line 28
    invoke-direct {v2, v3, v1}, Lcom/android/net/module/util/IpRange;-><init>(Ljava/net/InetAddress;Ljava/net/InetAddress;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/android/net/module/util/IpRange;->asIpPrefixes()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Landroid/net/IpPrefix;

    .line 50
    .line 51
    new-instance v3, Landroid/net/RouteInfo;

    .line 52
    .line 53
    const/4 v4, 0x1

    .line 54
    const/4 v5, 0x0

    .line 55
    invoke-direct {v3, v2, v5, v5, v4}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
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

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    const-string v1, "@#"

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x2

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    new-instance v0, Landroid/net/ipsec/ike/IkeKeyIdIdentification;

    .line 23
    .line 24
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeKeyIdIdentification;-><init>([B)V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_0
    const-string v1, "@@"

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    new-instance v0, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;

    .line 41
    .line 42
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v0

    .line 50
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    new-instance v0, Landroid/net/ipsec/ike/IkeFqdnIdentification;

    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeFqdnIdentification;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-object v0

    .line 67
    :cond_2
    new-instance v0, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;

    .line 68
    .line 69
    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-object v0

    .line 73
    :cond_3
    invoke-static {p0}, Landroid/net/InetAddresses;->isNumericAddress(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_6

    .line 78
    .line 79
    invoke-static {p0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    instance-of v0, p0, Ljava/net/Inet4Address;

    .line 84
    .line 85
    if-eqz v0, :cond_4

    .line 86
    .line 87
    new-instance v0, Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;

    .line 88
    .line 89
    check-cast p0, Ljava/net/Inet4Address;

    .line 90
    .line 91
    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;-><init>(Ljava/net/Inet4Address;)V

    .line 92
    .line 93
    .line 94
    return-object v0

    .line 95
    :cond_4
    instance-of v0, p0, Ljava/net/Inet6Address;

    .line 96
    .line 97
    if-eqz v0, :cond_5

    .line 98
    .line 99
    new-instance v0, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;

    .line 100
    .line 101
    check-cast p0, Ljava/net/Inet6Address;

    .line 102
    .line 103
    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;-><init>(Ljava/net/Inet6Address;)V

    .line 104
    .line 105
    .line 106
    return-object v0

    .line 107
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 108
    .line 109
    const-string v0, "IP version not supported"

    .line 110
    .line 111
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw p0

    .line 115
    :cond_6
    const-string v0, ":"

    .line 116
    .line 117
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_7

    .line 122
    .line 123
    new-instance v0, Landroid/net/ipsec/ike/IkeKeyIdIdentification;

    .line 124
    .line 125
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeKeyIdIdentification;-><init>([B)V

    .line 130
    .line 131
    .line 132
    return-object v0

    .line 133
    :cond_7
    new-instance v0, Landroid/net/ipsec/ike/IkeFqdnIdentification;

    .line 134
    .line 135
    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeFqdnIdentification;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    return-object v0
.end method
