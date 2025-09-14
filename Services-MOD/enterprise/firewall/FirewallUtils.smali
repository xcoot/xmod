.class public abstract Lcom/android/server/enterprise/firewall/FirewallUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final PACKAGE_EXCEPTION_KEYWORDS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const-string v7, ".ucm"

    .line 3
    const-string v8, ".ucs"

    .line 5
    const-string v0, ".mdm."

    .line 7
    const-string v1, ".knox."

    .line 9
    const-string v2, ".elm."

    .line 11
    const-string v3, ".edm."

    .line 13
    const-string/jumbo v4, "com.android.captiveportallogin"

    .line 16
    const-string v5, ".klm"

    .line 18
    const-string v6, ".spay"

    .line 20
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/android/server/enterprise/firewall/FirewallUtils;->PACKAGE_EXCEPTION_KEYWORDS:[Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static convertAddressType(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 9
    return-object p0

    .line 10
    :cond_0
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 12
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->toString()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 22
    return-object v0

    .line 23
    :cond_1
    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV6:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 25
    invoke-virtual {v1}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->toString()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_2

    .line 35
    return-object v1

    .line 36
    :cond_2
    return-object v0
.end method

.method public static convertDirection(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$Direction;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    .line 9
    return-object p0

    .line 10
    :cond_0
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->INPUT:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    .line 12
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->toString()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 22
    return-object v0

    .line 23
    :cond_1
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->OUTPUT:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    .line 25
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 35
    return-object v0

    .line 36
    :cond_2
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->FORWARD:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    .line 38
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->toString()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_3

    .line 48
    return-object v0

    .line 49
    :cond_3
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    .line 51
    return-object p0
.end method

.method public static convertNetworkInterface(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->ALL_NETWORKS:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    .line 9
    return-object p0

    .line 10
    :cond_0
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->MOBILE_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    .line 12
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->toString()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 22
    return-object v0

    .line 23
    :cond_1
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->WIFI_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    .line 25
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_2

    .line 35
    return-object v0

    .line 36
    :cond_2
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->ALL_NETWORKS:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    .line 38
    return-object p0
.end method

.method public static convertNetworkInterfaceForIptables(Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 18
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/net/NetworkInterface;

    .line 24
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    .line 27
    move-result-object v3

    .line 28
    if-eqz v3, :cond_0

    .line 30
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 37
    move-result v3

    .line 38
    if-nez v3, :cond_0

    .line 40
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception v1

    .line 49
    const-string v2, "FirewallUtils"

    .line 51
    invoke-virtual {v1}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_1
    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->MOBILE_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    .line 60
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_2

    .line 66
    const-string/jumbo p0, "rmnet"

    .line 69
    const-string/jumbo v1, "ccinet"

    .line 72
    filled-new-array {p0, v1}, [Ljava/lang/String;

    .line 75
    move-result-object p0

    .line 76
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 79
    move-result-object p0

    .line 80
    const-string/jumbo v1, "net"

    .line 83
    const-string/jumbo v2, "rmnet+"

    .line 86
    invoke-static {v0, p0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getBestEffortInterfaceName(Ljava/util/Set;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    move-result-object p0

    .line 90
    return-object p0

    .line 91
    :cond_2
    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->WIFI_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    .line 93
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result p0

    .line 97
    if-eqz p0, :cond_3

    .line 99
    const-string/jumbo p0, "wlan"

    .line 102
    filled-new-array {p0}, [Ljava/lang/String;

    .line 105
    move-result-object p0

    .line 106
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 109
    move-result-object p0

    .line 110
    const-string/jumbo v1, "lan"

    .line 113
    const-string/jumbo v2, "wlan+"

    .line 116
    invoke-static {v0, p0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getBestEffortInterfaceName(Ljava/util/Set;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    move-result-object p0

    .line 120
    return-object p0

    .line 121
    :cond_3
    const-string p0, ""

    .line 123
    return-object p0
.end method

.method public static convertPortLocation(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    .line 9
    return-object p0

    .line 10
    :cond_0
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->LOCAL:Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    .line 12
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->toString()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 22
    return-object v0

    .line 23
    :cond_1
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->REMOTE:Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    .line 25
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_2

    .line 35
    return-object v0

    .line 36
    :cond_2
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    .line 38
    return-object p0
.end method

.method public static convertProtocol(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->TCP:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->toString()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 13
    return-object v0

    .line 14
    :cond_0
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->UDP:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 16
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_1

    .line 26
    return-object v0

    .line 27
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 29
    return-object p0
.end method

.method public static convertStatus(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    sget-object p0, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->DISABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    .line 9
    return-object p0

    .line 10
    :cond_0
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->ENABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    .line 12
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->toString()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 22
    return-object v0

    .line 23
    :cond_1
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->PENDING:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    .line 25
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_2

    .line 35
    return-object v0

    .line 36
    :cond_2
    sget-object p0, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->DISABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    .line 38
    return-object p0
.end method

.method public static filterRulesByUser(ILjava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 1
    const-string v0, "-"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    if-nez p1, :cond_0

    .line 10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_0
    new-instance v2, Ljava/util/StringTokenizer;

    .line 17
    const-string v3, "\n"

    .line 19
    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_5

    .line 28
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    const-string/jumbo v4, "owner UID match"

    .line 35
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 38
    move-result v4

    .line 39
    const/4 v5, -0x1

    .line 40
    if-ne v4, v5, :cond_2

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    add-int/lit8 v4, v4, 0xf

    .line 45
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 52
    move-result-object v4

    .line 53
    :try_start_0
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 56
    move-result v6

    .line 57
    if-eqz v6, :cond_4

    .line 59
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 62
    move-result-object v4

    .line 63
    const/4 v6, 0x0

    .line 64
    aget-object v7, v4, v6

    .line 66
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 69
    move-result-object v7

    .line 70
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 73
    move-result v7

    .line 74
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    .line 77
    move-result v7

    .line 78
    const/4 v8, 0x1

    .line 79
    aget-object v9, v4, v8

    .line 81
    const-string v10, " "

    .line 83
    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 86
    move-result v9

    .line 87
    if-gt v9, v5, :cond_3

    .line 89
    aget-object v4, v4, v8

    .line 91
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 98
    move-result v4

    .line 99
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 102
    move-result v4

    .line 103
    goto :goto_1

    .line 104
    :cond_3
    aget-object v4, v4, v8

    .line 106
    invoke-virtual {v4, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 109
    move-result-object v4

    .line 110
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 113
    move-result-object v4

    .line 114
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 117
    move-result v4

    .line 118
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 121
    move-result v4

    .line 122
    :goto_1
    if-lt p0, v7, :cond_1

    .line 124
    if-gt p0, v4, :cond_1

    .line 126
    goto :goto_2

    .line 127
    :cond_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 130
    move-result-object v4

    .line 131
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 134
    move-result v4

    .line 135
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 138
    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    if-ne p0, v4, :cond_1

    .line 141
    :catch_0
    :goto_2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    goto :goto_0

    .line 148
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    move-result-object p0

    .line 152
    return-object p0
.end method

.method public static getAllUsers(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const-string/jumbo v1, "user"

    .line 9
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Landroid/os/UserManager;

    .line 15
    if-eqz p0, :cond_0

    .line 17
    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object p0

    .line 25
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 37
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 44
    move-result v1

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    return-object v0
.end method

.method public static getAppOrUserUid(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/FirewallRule;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPackageUid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, p0, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getAppOrUserUid(Ljava/lang/String;ILjava/lang/Integer;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppOrUserUid(Ljava/lang/String;ILjava/lang/Integer;Z)Ljava/lang/String;
    .locals 2

    .line 4
    const-string v0, " -m owner --uid-owner "

    if-nez p0, :cond_0

    return-object v0

    .line 5
    :cond_0
    const-string v1, "*"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const p0, 0x1869f

    if-nez p1, :cond_2

    if-eqz p3, :cond_1

    const/16 p1, 0x2710

    goto :goto_0

    :cond_1
    const/16 p1, 0x3e9

    goto :goto_0

    :cond_2
    const p2, 0x186a0

    mul-int/2addr p1, p2

    add-int/2addr p0, p1

    .line 6
    :goto_0
    const-string p2, "-"

    .line 7
    invoke-static {p1, p0, v0, p2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 8
    :cond_3
    const-string p3, "SYSTEM_UIDS"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 9
    const-string v0, " -m owner --uid-owner 0-1000"

    goto :goto_1

    .line 10
    :cond_4
    const-string/jumbo p3, "dns_tether"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 11
    const-string v0, " -m owner --uid-owner 1052"

    goto :goto_1

    .line 12
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v1, -0x1

    if-ne p3, v1, :cond_6

    .line 13
    invoke-static {p1, p0}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getUidForApplication(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    :cond_6
    if-eqz p2, :cond_7

    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    :goto_1
    return-object v0
.end method

.method public static getBestEffortInterfaceName(Ljava/util/Set;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    check-cast p0, Ljava/util/HashSet;

    .line 3
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    const-string v2, "+"

    .line 13
    if-eqz v1, :cond_2

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/String;

    .line 21
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v3

    .line 25
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_0

    .line 31
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Ljava/lang/String;

    .line 37
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_1

    .line 43
    invoke-static {v4, v2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_2
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 51
    move-result-object p0

    .line 52
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_4

    .line 58
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Ljava/lang/String;

    .line 64
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_3

    .line 70
    sget-object p0, Lcom/android/server/enterprise/firewall/FirewallDefinitions;->PATTERN_NUMERAL_ENDING_SUFIX:Ljava/util/regex/Pattern;

    .line 72
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    move-result-object p0

    .line 80
    return-object p0

    .line 81
    :cond_4
    return-object p3
.end method

.method public static getContentValuesFromRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;I)Landroid/content/ContentValues;
    .locals 13

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6
    const/16 v1, 0x3e8

    .line 8
    if-eq p1, v1, :cond_0

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object p1

    .line 14
    const-string v1, "adminUid"

    .line 16
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStatus()Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->toString()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    const-string/jumbo v1, "status"

    .line 30
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_0
    sget-object p1, Lcom/android/server/enterprise/firewall/FirewallUtils$1;->$SwitchMap$com$samsung$android$knox$net$firewall$FirewallRule$RuleType:[I

    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getRuleType()Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ordinal()I

    .line 42
    move-result v1

    .line 43
    aget p1, p1, v1

    .line 45
    const/4 v1, 0x1

    .line 46
    const-string/jumbo v2, "direction"

    .line 49
    const-string/jumbo v3, "portLocation"

    .line 52
    const-string/jumbo v4, "networkInterfaceStr"

    .line 55
    const-string v5, "addressType"

    .line 57
    const-string/jumbo v6, "protocol"

    .line 60
    const-string/jumbo v7, "networkInterface"

    .line 63
    const-string/jumbo v8, "signature"

    .line 66
    const-string/jumbo v9, "packageName"

    .line 69
    const-string/jumbo v10, "portNumber"

    .line 72
    const-string/jumbo v11, "ipAddress"

    .line 75
    const-string/jumbo v12, "ruleType"

    .line 78
    if-eq p1, v1, :cond_7

    .line 80
    const/4 v1, 0x2

    .line 81
    if-eq p1, v1, :cond_5

    .line 83
    const/4 v1, 0x3

    .line 84
    if-eq p1, v1, :cond_3

    .line 86
    const/4 v1, 0x4

    .line 87
    if-eq p1, v1, :cond_1

    .line 89
    goto/16 :goto_0

    .line 91
    :cond_1
    sget-object p1, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 93
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->toString()Ljava/lang/String;

    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {v0, v12, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {v0, v11, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {v0, v10, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {v0, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    .line 132
    move-result-object p1

    .line 133
    if-eqz p1, :cond_2

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {v0, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->toString()Ljava/lang/String;

    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {v0, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->toString()Ljava/lang/String;

    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {v0, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 171
    move-result-object p1

    .line 172
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->toString()Ljava/lang/String;

    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {v0, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    .line 182
    move-result-object p1

    .line 183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 186
    move-result p1

    .line 187
    if-nez p1, :cond_9

    .line 189
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    .line 192
    move-result-object p0

    .line 193
    invoke-virtual {v0, v4, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    goto/16 :goto_0

    .line 198
    :cond_3
    sget-object p1, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 200
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->toString()Ljava/lang/String;

    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {v0, v12, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    .line 210
    move-result-object p1

    .line 211
    invoke-virtual {v0, v11, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    .line 217
    move-result-object p1

    .line 218
    invoke-virtual {v0, v10, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 224
    move-result-object p1

    .line 225
    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 228
    move-result-object p1

    .line 229
    invoke-virtual {v0, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 235
    move-result-object p1

    .line 236
    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    .line 239
    move-result-object p1

    .line 240
    if-eqz p1, :cond_4

    .line 242
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 245
    move-result-object p1

    .line 246
    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    .line 249
    move-result-object p1

    .line 250
    invoke-virtual {v0, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    .line 256
    move-result-object p1

    .line 257
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->toString()Ljava/lang/String;

    .line 260
    move-result-object p1

    .line 261
    invoke-virtual {v0, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 267
    move-result-object p1

    .line 268
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->toString()Ljava/lang/String;

    .line 271
    move-result-object p1

    .line 272
    invoke-virtual {v0, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 278
    move-result-object p1

    .line 279
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->toString()Ljava/lang/String;

    .line 282
    move-result-object p1

    .line 283
    invoke-virtual {v0, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string/jumbo p1, "targetIpAddress"

    .line 289
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getTargetIpAddress()Ljava/lang/String;

    .line 292
    move-result-object v1

    .line 293
    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string/jumbo p1, "targetPortNumber"

    .line 299
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getTargetPortNumber()Ljava/lang/String;

    .line 302
    move-result-object v1

    .line 303
    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    .line 309
    move-result-object p1

    .line 310
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 313
    move-result p1

    .line 314
    if-nez p1, :cond_9

    .line 316
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    .line 319
    move-result-object p0

    .line 320
    invoke-virtual {v0, v4, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    goto/16 :goto_0

    .line 325
    :cond_5
    sget-object p1, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 327
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->toString()Ljava/lang/String;

    .line 330
    move-result-object p1

    .line 331
    invoke-virtual {v0, v12, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    .line 337
    move-result-object p1

    .line 338
    invoke-virtual {v0, v11, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    .line 344
    move-result-object p1

    .line 345
    invoke-virtual {v0, v10, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortLocation()Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    .line 351
    move-result-object p1

    .line 352
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->toString()Ljava/lang/String;

    .line 355
    move-result-object p1

    .line 356
    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 362
    move-result-object p1

    .line 363
    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 366
    move-result-object p1

    .line 367
    invoke-virtual {v0, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 373
    move-result-object p1

    .line 374
    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    .line 377
    move-result-object p1

    .line 378
    if-eqz p1, :cond_6

    .line 380
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 383
    move-result-object p1

    .line 384
    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    .line 387
    move-result-object p1

    .line 388
    invoke-virtual {v0, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    .line 394
    move-result-object p1

    .line 395
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->toString()Ljava/lang/String;

    .line 398
    move-result-object p1

    .line 399
    invoke-virtual {v0, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getDirection()Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    .line 405
    move-result-object p1

    .line 406
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->toString()Ljava/lang/String;

    .line 409
    move-result-object p1

    .line 410
    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 416
    move-result-object p1

    .line 417
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->toString()Ljava/lang/String;

    .line 420
    move-result-object p1

    .line 421
    invoke-virtual {v0, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 427
    move-result-object p1

    .line 428
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->toString()Ljava/lang/String;

    .line 431
    move-result-object p1

    .line 432
    invoke-virtual {v0, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    .line 438
    move-result-object p1

    .line 439
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 442
    move-result p1

    .line 443
    if-nez p1, :cond_9

    .line 445
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    .line 448
    move-result-object p0

    .line 449
    invoke-virtual {v0, v4, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    goto/16 :goto_0

    .line 454
    :cond_7
    sget-object p1, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ALLOW:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 456
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->toString()Ljava/lang/String;

    .line 459
    move-result-object p1

    .line 460
    invoke-virtual {v0, v12, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    .line 466
    move-result-object p1

    .line 467
    invoke-virtual {v0, v11, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    .line 473
    move-result-object p1

    .line 474
    invoke-virtual {v0, v10, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortLocation()Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    .line 480
    move-result-object p1

    .line 481
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->toString()Ljava/lang/String;

    .line 484
    move-result-object p1

    .line 485
    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 491
    move-result-object p1

    .line 492
    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 495
    move-result-object p1

    .line 496
    invoke-virtual {v0, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 502
    move-result-object p1

    .line 503
    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    .line 506
    move-result-object p1

    .line 507
    if-eqz p1, :cond_8

    .line 509
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 512
    move-result-object p1

    .line 513
    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    .line 516
    move-result-object p1

    .line 517
    invoke-virtual {v0, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    .line 523
    move-result-object p1

    .line 524
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->toString()Ljava/lang/String;

    .line 527
    move-result-object p1

    .line 528
    invoke-virtual {v0, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getDirection()Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    .line 534
    move-result-object p1

    .line 535
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->toString()Ljava/lang/String;

    .line 538
    move-result-object p1

    .line 539
    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 545
    move-result-object p1

    .line 546
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->toString()Ljava/lang/String;

    .line 549
    move-result-object p1

    .line 550
    invoke-virtual {v0, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 556
    move-result-object p1

    .line 557
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->toString()Ljava/lang/String;

    .line 560
    move-result-object p1

    .line 561
    invoke-virtual {v0, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    .line 567
    move-result-object p1

    .line 568
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 571
    move-result p1

    .line 572
    if-nez p1, :cond_9

    .line 574
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    .line 577
    move-result-object p0

    .line 578
    invoke-virtual {v0, v4, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    :cond_9
    :goto_0
    return-object v0
.end method

.method public static getListFromDb(Landroid/content/ContentValues;Ljava/lang/String;Lcom/android/server/enterprise/storage/EdmStorageProvider;)Ljava/util/List;
    .locals 5

    .line 1
    const-string/jumbo v0, "packageName"

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v1

    .line 8
    const-string v2, "adminUid"

    .line 10
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 13
    move-result-object p0

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    const-string/jumbo v4, "getListFromDb() - packageName: "

    .line 19
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string v4, " userId "

    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v3

    .line 37
    const-string v4, "FirewallUtils"

    .line 39
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    if-eqz p0, :cond_1

    .line 44
    new-instance v3, Landroid/content/ContentValues;

    .line 46
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 49
    invoke-virtual {v3, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 52
    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string/jumbo p0, "typeList"

    .line 58
    invoke-virtual {v3, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string p0, "DomainFilterListTable"

    .line 63
    const/4 p1, 0x0

    .line 64
    invoke-virtual {p2, p0, p1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 67
    move-result-object p0

    .line 68
    check-cast p0, Ljava/util/ArrayList;

    .line 70
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_1

    .line 76
    const-string/jumbo p1, "getListFromDb() - cvlist is not empty "

    .line 79
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance p1, Ljava/util/ArrayList;

    .line 84
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 90
    move-result-object p0

    .line 91
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    move-result p2

    .line 95
    if-eqz p2, :cond_0

    .line 97
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    move-result-object p2

    .line 101
    check-cast p2, Landroid/content/ContentValues;

    .line 103
    const-string/jumbo v0, "domain"

    .line 106
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    move-result-object p2

    .line 110
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    goto :goto_0

    .line 114
    :cond_0
    return-object p1

    .line 115
    :cond_1
    const-string/jumbo p0, "getListFromDb() - containsKey(type) "

    .line 118
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance p0, Ljava/util/ArrayList;

    .line 123
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    return-object p0
.end method

.method public static getPlatformUidsToExemptFromPackages(Ljava/util/List;)Ljava/util/List;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v1, Ljava/util/HashSet;

    .line 8
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 11
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p0

    .line 15
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 27
    sget-object v3, Lcom/android/server/enterprise/firewall/FirewallDefinitions;->EXEMPT_PACKAGE_LIST:Ljava/util/List;

    .line 29
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 31
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 33
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_0

    .line 39
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 41
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 43
    const-string/jumbo v4, "com.samsung.android.kgclient"

    .line 46
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_0

    .line 52
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 54
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 56
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 58
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 61
    move-result v3

    .line 62
    invoke-static {v3, v4}, Lcom/android/server/enterprise/firewall/FirewallUtils;->isPlatformSigned(ILjava/lang/String;)Z

    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_0

    .line 68
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 70
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 72
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 83
    return-object v0
.end method

.method public static getRuleFromContentValues(Ljava/util/List;Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;
    .locals 19

    .line 1
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    new-array v0, v0, [Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 7
    sget-object v1, Lcom/android/server/enterprise/firewall/FirewallUtils$1;->$SwitchMap$com$samsung$android$knox$net$firewall$FirewallRule$RuleType:[I

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ordinal()I

    .line 12
    move-result v2

    .line 13
    aget v1, v1, v2

    .line 15
    const-string/jumbo v2, "direction"

    .line 18
    const-string/jumbo v3, "portLocation"

    .line 21
    const-string/jumbo v4, "networkInterfaceStr"

    .line 24
    const-string/jumbo v5, "id"

    .line 27
    const-string/jumbo v6, "status"

    .line 30
    const-string/jumbo v7, "protocol"

    .line 33
    const-string/jumbo v8, "networkInterface"

    .line 36
    const-string/jumbo v9, "signature"

    .line 39
    const-string/jumbo v10, "packageName"

    .line 42
    const-string/jumbo v11, "portNumber"

    .line 45
    const-string/jumbo v12, "ipAddress"

    .line 48
    const-string v13, "addressType"

    .line 50
    const/4 v14, 0x1

    .line 51
    if-eq v1, v14, :cond_3

    .line 53
    const/4 v15, 0x2

    .line 54
    if-eq v1, v15, :cond_2

    .line 56
    const/4 v2, 0x3

    .line 57
    if-eq v1, v2, :cond_1

    .line 59
    const/4 v2, 0x4

    .line 60
    if-eq v1, v2, :cond_0

    .line 62
    goto/16 :goto_4

    .line 64
    :cond_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 67
    move-result-object v1

    .line 68
    const/4 v15, 0x0

    .line 69
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_4

    .line 75
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Landroid/content/ContentValues;

    .line 81
    new-instance v3, Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 83
    sget-object v14, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 85
    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    move-result-object v16

    .line 89
    move-object/from16 p0, v1

    .line 91
    invoke-static/range {v16 .. v16}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertAddressType(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 94
    move-result-object v1

    .line 95
    invoke-direct {v3, v14, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;)V

    .line 98
    invoke-virtual {v2, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v3, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setIpAddress(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v2, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v3, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setPortNumber(Ljava/lang/String;)V

    .line 112
    new-instance v1, Lcom/samsung/android/knox/AppIdentity;

    .line 114
    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    move-result-object v14

    .line 118
    move-object/from16 v16, v10

    .line 120
    invoke-virtual {v2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    move-result-object v10

    .line 124
    invoke-direct {v1, v14, v10}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v3, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setApplication(Lcom/samsung/android/knox/AppIdentity;)V

    .line 130
    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    move-result-object v1

    .line 134
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertNetworkInterface(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v3, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setNetworkInterface(Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;)V

    .line 141
    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    move-result-object v1

    .line 145
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertProtocol(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v3, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setProtocol(Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;)V

    .line 152
    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    move-result-object v1

    .line 156
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertStatus(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v3, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setStatus(Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;)V

    .line 163
    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 170
    move-result v1

    .line 171
    invoke-virtual {v3, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setId(I)V

    .line 174
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v3, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setStrNetworkInterface(Ljava/lang/String;)V

    .line 181
    aput-object v3, v0, v15

    .line 183
    const/4 v1, 0x1

    .line 184
    add-int/2addr v15, v1

    .line 185
    move v14, v1

    .line 186
    move-object/from16 v10, v16

    .line 188
    move-object/from16 v1, p0

    .line 190
    goto :goto_0

    .line 191
    :cond_1
    move-object/from16 v16, v10

    .line 193
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 196
    move-result-object v1

    .line 197
    const/4 v15, 0x0

    .line 198
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 201
    move-result v2

    .line 202
    if-eqz v2, :cond_4

    .line 204
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 207
    move-result-object v2

    .line 208
    check-cast v2, Landroid/content/ContentValues;

    .line 210
    new-instance v3, Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 212
    sget-object v10, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 214
    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 217
    move-result-object v14

    .line 218
    invoke-static {v14}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertAddressType(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 221
    move-result-object v14

    .line 222
    invoke-direct {v3, v10, v14}, Lcom/samsung/android/knox/net/firewall/FirewallRule;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;)V

    .line 225
    invoke-virtual {v2, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    move-result-object v10

    .line 229
    invoke-virtual {v3, v10}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setIpAddress(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v2, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 235
    move-result-object v10

    .line 236
    invoke-virtual {v3, v10}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setPortNumber(Ljava/lang/String;)V

    .line 239
    const-string/jumbo v10, "targetIpAddress"

    .line 242
    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 245
    move-result-object v10

    .line 246
    invoke-virtual {v3, v10}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setTargetIpAddress(Ljava/lang/String;)V

    .line 249
    const-string/jumbo v10, "targetPortNumber"

    .line 252
    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 255
    move-result-object v10

    .line 256
    invoke-virtual {v3, v10}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setTargetPortNumber(Ljava/lang/String;)V

    .line 259
    new-instance v10, Lcom/samsung/android/knox/AppIdentity;

    .line 261
    move-object/from16 p0, v1

    .line 263
    move-object/from16 v14, v16

    .line 265
    invoke-virtual {v2, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 268
    move-result-object v1

    .line 269
    invoke-virtual {v2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 272
    move-result-object v14

    .line 273
    invoke-direct {v10, v1, v14}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-virtual {v3, v10}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setApplication(Lcom/samsung/android/knox/AppIdentity;)V

    .line 279
    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 282
    move-result-object v1

    .line 283
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertNetworkInterface(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    .line 286
    move-result-object v1

    .line 287
    invoke-virtual {v3, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setNetworkInterface(Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;)V

    .line 290
    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 293
    move-result-object v1

    .line 294
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertProtocol(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 297
    move-result-object v1

    .line 298
    invoke-virtual {v3, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setProtocol(Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;)V

    .line 301
    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 304
    move-result-object v1

    .line 305
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertStatus(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    .line 308
    move-result-object v1

    .line 309
    invoke-virtual {v3, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setStatus(Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;)V

    .line 312
    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 315
    move-result-object v1

    .line 316
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 319
    move-result v1

    .line 320
    invoke-virtual {v3, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setId(I)V

    .line 323
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 326
    move-result-object v1

    .line 327
    invoke-virtual {v3, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setStrNetworkInterface(Ljava/lang/String;)V

    .line 330
    aput-object v3, v0, v15

    .line 332
    const/4 v1, 0x1

    .line 333
    add-int/2addr v15, v1

    .line 334
    move-object/from16 v1, p0

    .line 336
    goto/16 :goto_1

    .line 338
    :cond_2
    move-object/from16 v16, v10

    .line 340
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 343
    move-result-object v1

    .line 344
    const/4 v15, 0x0

    .line 345
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 348
    move-result v10

    .line 349
    if-eqz v10, :cond_4

    .line 351
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 354
    move-result-object v10

    .line 355
    check-cast v10, Landroid/content/ContentValues;

    .line 357
    new-instance v14, Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 359
    move-object/from16 p0, v1

    .line 361
    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 363
    invoke-virtual {v10, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 366
    move-result-object v17

    .line 367
    move-object/from16 v18, v13

    .line 369
    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertAddressType(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 372
    move-result-object v13

    .line 373
    invoke-direct {v14, v1, v13}, Lcom/samsung/android/knox/net/firewall/FirewallRule;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;)V

    .line 376
    invoke-virtual {v10, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 379
    move-result-object v1

    .line 380
    invoke-virtual {v14, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setIpAddress(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 386
    move-result-object v1

    .line 387
    invoke-virtual {v14, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setPortNumber(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v10, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 393
    move-result-object v1

    .line 394
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertPortLocation(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    .line 397
    move-result-object v1

    .line 398
    invoke-virtual {v14, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setPortLocation(Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;)V

    .line 401
    new-instance v1, Lcom/samsung/android/knox/AppIdentity;

    .line 403
    move-object/from16 v13, v16

    .line 405
    move-object/from16 v16, v3

    .line 407
    invoke-virtual {v10, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 410
    move-result-object v3

    .line 411
    move-object/from16 v17, v13

    .line 413
    invoke-virtual {v10, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 416
    move-result-object v13

    .line 417
    invoke-direct {v1, v3, v13}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-virtual {v14, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setApplication(Lcom/samsung/android/knox/AppIdentity;)V

    .line 423
    invoke-virtual {v10, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 426
    move-result-object v1

    .line 427
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertNetworkInterface(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    .line 430
    move-result-object v1

    .line 431
    invoke-virtual {v14, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setNetworkInterface(Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;)V

    .line 434
    invoke-virtual {v10, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 437
    move-result-object v1

    .line 438
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertDirection(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    .line 441
    move-result-object v1

    .line 442
    invoke-virtual {v14, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setDirection(Lcom/samsung/android/knox/net/firewall/Firewall$Direction;)V

    .line 445
    invoke-virtual {v10, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 448
    move-result-object v1

    .line 449
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertProtocol(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 452
    move-result-object v1

    .line 453
    invoke-virtual {v14, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setProtocol(Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;)V

    .line 456
    invoke-virtual {v10, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 459
    move-result-object v1

    .line 460
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertStatus(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    .line 463
    move-result-object v1

    .line 464
    invoke-virtual {v14, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setStatus(Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;)V

    .line 467
    invoke-virtual {v10, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 470
    move-result-object v1

    .line 471
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 474
    move-result v1

    .line 475
    invoke-virtual {v14, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setId(I)V

    .line 478
    invoke-virtual {v10, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 481
    move-result-object v1

    .line 482
    invoke-virtual {v14, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setStrNetworkInterface(Ljava/lang/String;)V

    .line 485
    aput-object v14, v0, v15

    .line 487
    const/4 v1, 0x1

    .line 488
    add-int/2addr v15, v1

    .line 489
    move-object/from16 v1, p0

    .line 491
    move-object/from16 v3, v16

    .line 493
    move-object/from16 v16, v17

    .line 495
    move-object/from16 v13, v18

    .line 497
    goto/16 :goto_2

    .line 499
    :cond_3
    move-object/from16 v16, v3

    .line 501
    move-object/from16 v17, v10

    .line 503
    move-object/from16 v18, v13

    .line 505
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 508
    move-result-object v1

    .line 509
    const/4 v15, 0x0

    .line 510
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 513
    move-result v3

    .line 514
    if-eqz v3, :cond_4

    .line 516
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 519
    move-result-object v3

    .line 520
    check-cast v3, Landroid/content/ContentValues;

    .line 522
    new-instance v10, Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 524
    sget-object v13, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ALLOW:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 526
    move-object/from16 v14, v18

    .line 528
    invoke-virtual {v3, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 531
    move-result-object v18

    .line 532
    move-object/from16 p0, v1

    .line 534
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertAddressType(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 537
    move-result-object v1

    .line 538
    invoke-direct {v10, v13, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;)V

    .line 541
    invoke-virtual {v3, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 544
    move-result-object v1

    .line 545
    invoke-virtual {v10, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setIpAddress(Ljava/lang/String;)V

    .line 548
    invoke-virtual {v3, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 551
    move-result-object v1

    .line 552
    invoke-virtual {v10, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setPortNumber(Ljava/lang/String;)V

    .line 555
    move-object/from16 v1, v16

    .line 557
    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 560
    move-result-object v13

    .line 561
    invoke-static {v13}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertPortLocation(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    .line 564
    move-result-object v13

    .line 565
    invoke-virtual {v10, v13}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setPortLocation(Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;)V

    .line 568
    new-instance v13, Lcom/samsung/android/knox/AppIdentity;

    .line 570
    move-object/from16 p1, v11

    .line 572
    move-object/from16 v1, v17

    .line 574
    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 577
    move-result-object v11

    .line 578
    invoke-virtual {v3, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 581
    move-result-object v1

    .line 582
    invoke-direct {v13, v11, v1}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-virtual {v10, v13}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setApplication(Lcom/samsung/android/knox/AppIdentity;)V

    .line 588
    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 591
    move-result-object v1

    .line 592
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertNetworkInterface(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    .line 595
    move-result-object v1

    .line 596
    invoke-virtual {v10, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setNetworkInterface(Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;)V

    .line 599
    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 602
    move-result-object v1

    .line 603
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertDirection(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    .line 606
    move-result-object v1

    .line 607
    invoke-virtual {v10, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setDirection(Lcom/samsung/android/knox/net/firewall/Firewall$Direction;)V

    .line 610
    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 613
    move-result-object v1

    .line 614
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertProtocol(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 617
    move-result-object v1

    .line 618
    invoke-virtual {v10, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setProtocol(Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;)V

    .line 621
    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 624
    move-result-object v1

    .line 625
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertStatus(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    .line 628
    move-result-object v1

    .line 629
    invoke-virtual {v10, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setStatus(Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;)V

    .line 632
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 635
    move-result-object v1

    .line 636
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 639
    move-result v1

    .line 640
    invoke-virtual {v10, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setId(I)V

    .line 643
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 646
    move-result-object v1

    .line 647
    invoke-virtual {v10, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setStrNetworkInterface(Ljava/lang/String;)V

    .line 650
    aput-object v10, v0, v15

    .line 652
    const/4 v1, 0x1

    .line 653
    add-int/2addr v15, v1

    .line 654
    move-object/from16 v1, p0

    .line 656
    move-object/from16 v11, p1

    .line 658
    move-object/from16 v18, v14

    .line 660
    goto/16 :goto_3

    .line 662
    :cond_4
    :goto_4
    return-object v0
.end method

.method public static getTableByRuletype(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;)Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ALLOW:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 3
    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 9
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 11
    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object p0, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->NAT:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    .line 20
    return-object p0

    .line 21
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->FILTER:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    .line 23
    return-object p0
.end method

.method public static getUidForApplication(ILjava/lang/String;)Ljava/lang/Integer;
    .locals 7

    .line 1
    const-string v0, "Remote Exception on get getApplicationInfo"

    .line 3
    const-string/jumbo v1, "package"

    .line 6
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 13
    move-result-object v1

    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    move-result-wide v2

    .line 18
    const-wide/16 v4, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    :try_start_0
    invoke-interface {v1, p1, v4, v5, p0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 24
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_2

    .line 31
    :catch_0
    move-exception p0

    .line 32
    :try_start_1
    const-string p1, "FirewallUtils"

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    move-object p0, v6

    .line 57
    :goto_0
    if-nez p0, :cond_0

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 62
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object v6

    .line 66
    :goto_1
    return-object v6

    .line 67
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    throw p0
.end method

.method public static getUidsToExemptFromPackages(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/List;
    .locals 9

    .line 1
    const-string v0, "FirewallUtils"

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    move-result-object p0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    move-result-wide v2

    .line 16
    :try_start_0
    const-string v4, "android"

    .line 18
    const/16 v5, 0x40

    .line 20
    invoke-virtual {p0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 23
    move-result-object p0

    .line 24
    if-nez p0, :cond_0

    .line 26
    const-string/jumbo p0, "processPackageExceptionList() - systemInfo is null"

    .line 29
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    return-object v1

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto/16 :goto_5

    .line 39
    :catch_0
    move-exception p0

    .line 40
    goto/16 :goto_4

    .line 42
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 45
    new-instance v0, Ljava/util/HashSet;

    .line 47
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 50
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 53
    move-result-object v2

    .line 54
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_6

    .line 60
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 66
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 68
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 70
    const/16 v6, 0x2710

    .line 72
    if-lt v5, v6, :cond_1

    .line 74
    iget-object v5, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 76
    sget-object v6, Lcom/android/server/enterprise/utils/Utils;->HEX_DIGITS:[C

    .line 78
    if-eqz v5, :cond_5

    .line 80
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 82
    and-int/lit16 v4, v4, 0x81

    .line 84
    if-eqz v4, :cond_1

    .line 86
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 88
    if-eqz v4, :cond_1

    .line 90
    array-length v4, v4

    .line 91
    array-length v6, v5

    .line 92
    if-ne v4, v6, :cond_1

    .line 94
    const/4 v4, 0x0

    .line 95
    move v6, v4

    .line 96
    :goto_1
    array-length v7, v5

    .line 97
    if-ge v6, v7, :cond_3

    .line 99
    aget-object v7, v5, v6

    .line 101
    iget-object v8, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 103
    aget-object v8, v8, v6

    .line 105
    invoke-virtual {v7, v8}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    .line 108
    move-result v7

    .line 109
    if-nez v7, :cond_2

    .line 111
    goto :goto_0

    .line 112
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 114
    goto :goto_1

    .line 115
    :cond_3
    sget-object v5, Lcom/android/server/enterprise/firewall/FirewallUtils;->PACKAGE_EXCEPTION_KEYWORDS:[Ljava/lang/String;

    .line 117
    :goto_2
    const/16 v6, 0x9

    .line 119
    if-ge v4, v6, :cond_1

    .line 121
    aget-object v6, v5, v4

    .line 123
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 125
    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 127
    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 130
    move-result v6

    .line 131
    if-eqz v6, :cond_4

    .line 133
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 135
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 137
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    move-result-object v6

    .line 141
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 146
    goto :goto_2

    .line 147
    :cond_5
    const-string v3, "EnterpriseUtils"

    .line 149
    const-string/jumbo v4, "invalid param, pkgInfo or signature null"

    .line 152
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    goto :goto_0

    .line 156
    :cond_6
    if-nez p2, :cond_7

    .line 158
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 161
    return-object v1

    .line 162
    :cond_7
    invoke-static {p1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getPlatformUidsToExemptFromPackages(Ljava/util/List;)Ljava/util/List;

    .line 165
    move-result-object p0

    .line 166
    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 169
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 172
    move-result-object p0

    .line 173
    :cond_8
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 176
    move-result p1

    .line 177
    if-eqz p1, :cond_9

    .line 179
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 182
    move-result-object p1

    .line 183
    check-cast p1, Landroid/content/pm/PackageInfo;

    .line 185
    iget-object p2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 187
    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 189
    const-string/jumbo v2, "com.samsung.android.kgclient"

    .line 192
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    move-result p2

    .line 196
    if-eqz p2, :cond_8

    .line 198
    invoke-static {}, Lcom/android/server/enterprise/firewall/FirewallUtils;->isKGExemptRuleRequired()Z

    .line 201
    move-result p2

    .line 202
    if-eqz p2, :cond_8

    .line 204
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 206
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 208
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 211
    move-result-object p1

    .line 212
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 215
    goto :goto_3

    .line 216
    :cond_9
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 219
    return-object v1

    .line 220
    :goto_4
    :try_start_1
    const-string/jumbo p1, "processPackageExceptionList() - failed to retrieve package info for system"

    .line 223
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 229
    return-object v1

    .line 230
    :goto_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 233
    throw p0
.end method

.method public static isIpv6SupportedForTable(Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_1

    .line 7
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eq p0, v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-boolean p0, Lcom/android/server/enterprise/firewall/Firewall;->mHasIpv6FilterSupport:Z

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    sget-boolean v1, Lcom/android/server/enterprise/firewall/Firewall;->mHasIpv6FilterSupport:Z

    .line 17
    :goto_0
    return v1
.end method

.method public static isKGExemptRuleRequired()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getInstance()Lcom/samsung/android/knoxguard/KnoxGuardManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->isVpnExceptionRequired()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static isPlatformSigned(ILjava/lang/String;)Z
    .locals 6

    .line 1
    const-string v0, "Remote Exception on get checkSignatures"

    .line 3
    const-string/jumbo v1, "package"

    .line 6
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 13
    move-result-object v1

    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    move-result-wide v2

    .line 18
    const/4 v4, 0x0

    .line 19
    :try_start_0
    const-string v5, "android"

    .line 21
    invoke-interface {v1, v5, p1, p0}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;I)I

    .line 24
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    if-nez p0, :cond_0

    .line 30
    const/4 v4, 0x1

    .line 31
    :cond_0
    return v4

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p0

    .line 35
    :try_start_1
    const-string p1, "FirewallUtils"

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 53
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    return v4

    .line 60
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    throw p0
.end method

.method public static isRuleEnabled(Lcom/samsung/android/knox/net/firewall/FirewallRule;ILcom/android/server/enterprise/storage/EdmStorageProvider;)Z
    .locals 3

    .line 1
    const-string/jumbo v0, "status"

    .line 4
    filled-new-array {v0}, [Ljava/lang/String;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez p2, :cond_0

    .line 11
    return v2

    .line 12
    :cond_0
    invoke-static {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getContentValuesFromRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;I)Landroid/content/ContentValues;

    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 19
    const-string p1, "FirewallRule"

    .line 21
    invoke-virtual {p2, p1, v1, p0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Ljava/util/ArrayList;

    .line 27
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 33
    return v2

    .line 34
    :cond_1
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Landroid/content/ContentValues;

    .line 40
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    if-eqz p0, :cond_2

    .line 50
    sget-object p1, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->ENABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    .line 52
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->toString()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result p0

    .line 60
    if-eqz p0, :cond_2

    .line 62
    const/4 v2, 0x1

    .line 63
    :cond_2
    return v2
.end method

.method public static validateDomain(Ljava/lang/String;)Z
    .locals 9

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    const-string/jumbo v0, "http:"

    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_16

    .line 22
    const-string/jumbo v0, "https:"

    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 31
    goto/16 :goto_a

    .line 33
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 36
    move-result v0

    .line 37
    const/16 v2, 0xff

    .line 39
    if-le v0, v2, :cond_2

    .line 41
    return v1

    .line 42
    :cond_2
    const-string v0, "*"

    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result v2

    .line 48
    const/4 v3, 0x1

    .line 49
    if-eqz v2, :cond_3

    .line 51
    return v3

    .line 52
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 55
    move-result v2

    .line 56
    const/4 v4, 0x2

    .line 57
    if-eqz v2, :cond_5

    .line 59
    const-string v2, "*."

    .line 61
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_4

    .line 67
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 70
    move-result-object p0

    .line 71
    goto :goto_0

    .line 72
    :cond_4
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 75
    move-result-object p0

    .line 76
    :goto_0
    move v2, v3

    .line 77
    goto :goto_1

    .line 78
    :cond_5
    move v2, v1

    .line 79
    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_7

    .line 85
    const-string v0, ".*"

    .line 87
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_6

    .line 93
    invoke-static {v4, v1, p0}, Lcom/android/server/DropBoxManagerService$EntryFile$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)Ljava/lang/String;

    .line 96
    move-result-object p0

    .line 97
    goto :goto_2

    .line 98
    :cond_6
    invoke-static {v3, v1, p0}, Lcom/android/server/DropBoxManagerService$EntryFile$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)Ljava/lang/String;

    .line 101
    move-result-object p0

    .line 102
    :goto_2
    move v0, v3

    .line 103
    goto :goto_3

    .line 104
    :cond_7
    move v0, v1

    .line 105
    :goto_3
    const-string v4, "\\."

    .line 107
    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 110
    move-result-object v4

    .line 111
    if-nez v2, :cond_c

    .line 113
    move v5, v1

    .line 114
    :goto_4
    aget-object v6, v4, v1

    .line 116
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 119
    move-result v6

    .line 120
    if-ge v5, v6, :cond_b

    .line 122
    aget-object v6, v4, v1

    .line 124
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    .line 127
    move-result v6

    .line 128
    const/16 v7, 0x61

    .line 130
    if-lt v6, v7, :cond_8

    .line 132
    const/16 v7, 0x7a

    .line 134
    if-le v6, v7, :cond_c

    .line 136
    :cond_8
    const/16 v7, 0x41

    .line 138
    if-lt v6, v7, :cond_9

    .line 140
    const/16 v7, 0x5a

    .line 142
    if-le v6, v7, :cond_c

    .line 144
    :cond_9
    const/16 v7, 0x30

    .line 146
    if-lt v6, v7, :cond_a

    .line 148
    const/16 v7, 0x39

    .line 150
    if-gt v6, v7, :cond_a

    .line 152
    goto :goto_5

    .line 153
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 155
    goto :goto_4

    .line 156
    :cond_b
    return v1

    .line 157
    :cond_c
    :goto_5
    move v5, v1

    .line 158
    move v6, v5

    .line 159
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 162
    move-result v7

    .line 163
    if-ge v5, v7, :cond_e

    .line 165
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 168
    move-result v7

    .line 169
    const/16 v8, 0x2e

    .line 171
    if-ne v7, v8, :cond_d

    .line 173
    add-int/lit8 v6, v6, 0x1

    .line 175
    :cond_d
    add-int/lit8 v5, v5, 0x1

    .line 177
    goto :goto_6

    .line 178
    :cond_e
    array-length p0, v4

    .line 179
    if-lt v6, p0, :cond_f

    .line 181
    return v1

    .line 182
    :cond_f
    array-length p0, v4

    .line 183
    move v5, v1

    .line 184
    :goto_7
    if-ge v5, p0, :cond_11

    .line 186
    aget-object v6, v4, v5

    .line 188
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 191
    move-result v6

    .line 192
    const/16 v7, 0x3f

    .line 194
    if-le v6, v7, :cond_10

    .line 196
    return v1

    .line 197
    :cond_10
    add-int/lit8 v5, v5, 0x1

    .line 199
    goto :goto_7

    .line 200
    :cond_11
    array-length p0, v4

    .line 201
    move v5, v1

    .line 202
    :goto_8
    if-ge v5, p0, :cond_15

    .line 204
    aget-object v6, v4, v5

    .line 206
    const-string v7, "^[A-Za-z0-9-]+$"

    .line 208
    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 211
    move-result v7

    .line 212
    if-eqz v7, :cond_14

    .line 214
    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    .line 217
    move-result v7

    .line 218
    const/16 v8, 0x2d

    .line 220
    if-ne v7, v8, :cond_12

    .line 222
    if-eqz v2, :cond_14

    .line 224
    :cond_12
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 227
    move-result v7

    .line 228
    sub-int/2addr v7, v3

    .line 229
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    .line 232
    move-result v6

    .line 233
    if-ne v6, v8, :cond_13

    .line 235
    if-nez v0, :cond_13

    .line 237
    goto :goto_9

    .line 238
    :cond_13
    add-int/lit8 v5, v5, 0x1

    .line 240
    goto :goto_8

    .line 241
    :cond_14
    :goto_9
    return v1

    .line 242
    :cond_15
    return v3

    .line 243
    :cond_16
    :goto_a
    return v1
.end method

.method public static verifyPackageName(ILjava/lang/String;)Z
    .locals 8

    .line 1
    const-string v0, "Remote Exception on get getApplicationInfo"

    .line 3
    const-string v1, "*"

    .line 5
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-nez v1, :cond_2

    .line 12
    const-string v1, "SYSTEM_UIDS"

    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 20
    goto :goto_2

    .line 21
    :cond_0
    const-string/jumbo v1, "package"

    .line 24
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 31
    move-result-object v1

    .line 32
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 35
    move-result-wide v3

    .line 36
    const-wide/16 v5, 0x0

    .line 38
    const/4 v7, 0x0

    .line 39
    :try_start_0
    invoke-interface {v1, p1, v5, v6, p0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 42
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    if-eqz p0, :cond_1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move v2, v7

    .line 50
    :goto_0
    return v2

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :catch_0
    move-exception p0

    .line 54
    :try_start_1
    const-string p1, "FirewallUtils"

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 72
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 78
    return v7

    .line 79
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 82
    throw p0

    .line 83
    :cond_2
    :goto_2
    return v2
.end method
