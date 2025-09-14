.class public final Lcom/android/net/module/util/NetdUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final TAG:Ljava/lang/String; = "NetdUtils"


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

.method public static addRoutesToLocalNetwork(Landroid/net/INetd;Ljava/lang/String;Ljava/util/List;)V
    .locals 5

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x63

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/net/RouteInfo;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    sget-object v2, Lcom/android/net/module/util/NetdUtils$ModifyOperation;->ADD:Lcom/android/net/module/util/NetdUtils$ModifyOperation;

    .line 26
    .line 27
    invoke-static {p0, v2, v1, v0}, Lcom/android/net/module/util/NetdUtils;->modifyRoute(Landroid/net/INetd;Lcom/android/net/module/util/NetdUtils$ModifyOperation;ILandroid/net/RouteInfo;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    sget-object p2, Lcom/android/net/module/util/NetdUtils$ModifyOperation;->ADD:Lcom/android/net/module/util/NetdUtils$ModifyOperation;

    .line 32
    .line 33
    new-instance v0, Landroid/net/RouteInfo;

    .line 34
    .line 35
    new-instance v2, Landroid/net/IpPrefix;

    .line 36
    .line 37
    const-string/jumbo v3, "fe80::/64"

    .line 38
    .line 39
    .line 40
    invoke-direct {v2, v3}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    const/4 v4, 0x1

    .line 45
    invoke-direct {v0, v2, v3, p1, v4}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    invoke-static {p0, p2, v1, v0}, Lcom/android/net/module/util/NetdUtils;->modifyRoute(Landroid/net/INetd;Lcom/android/net/module/util/NetdUtils$ModifyOperation;ILandroid/net/RouteInfo;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public static findNextHop(Landroid/net/RouteInfo;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/net/RouteInfo;->getType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const-string v2, ""

    .line 7
    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    .line 10
    const/4 p0, 0x7

    .line 11
    if-eq v0, p0, :cond_1

    .line 12
    .line 13
    const/16 p0, 0x9

    .line 14
    .line 15
    if-eq v0, p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string/jumbo v2, "throw"

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const-string/jumbo v2, "unreachable"

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    invoke-virtual {p0}, Landroid/net/RouteInfo;->hasGateway()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    :cond_3
    :goto_0
    return-object v2
.end method

.method public static getInterfaceConfigParcel(Landroid/net/INetd;Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Landroid/net/INetd;->interfaceGetCfg(Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 8
    .line 9
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    throw p1
.end method

.method public static hasFlag(Landroid/net/InterfaceConfigurationParcel;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/net/module/util/NetdUtils;->validateFlag(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    iget-object p0, p0, Landroid/net/InterfaceConfigurationParcel;->flags:[Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public static modifyRoute(Landroid/net/INetd;Lcom/android/net/module/util/NetdUtils$ModifyOperation;ILandroid/net/RouteInfo;)V
    .locals 5

    .line 1
    const-string v0, "Unsupported modify operation:"

    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {p3}, Lcom/android/net/module/util/NetdUtils;->findNextHop(Landroid/net/RouteInfo;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    if-ne v3, v4, :cond_0

    .line 27
    .line 28
    invoke-interface {p0, p2, v1, v2, p3}, Landroid/net/INetd;->networkRemoveRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p0

    .line 52
    :cond_1
    invoke-interface {p0, p2, v1, v2, p3}, Landroid/net/INetd;->networkAddRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void

    .line 56
    :goto_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    throw p1
.end method

.method public static networkAddInterface(Landroid/net/INetd;Ljava/lang/String;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceSpecificException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    :goto_0
    if-gt v0, p2, :cond_1

    .line 3
    .line 4
    const/16 v1, 0x63

    .line 5
    .line 6
    :try_start_0
    invoke-interface {p0, v1, p1}, Landroid/net/INetd;->networkAddInterface(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catch_0
    move-exception v1

    .line 11
    iget v2, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    .line 12
    .line 13
    sget v3, Landroid/system/OsConstants;->EBUSY:I

    .line 14
    .line 15
    if-ne v2, v3, :cond_0

    .line 16
    .line 17
    if-ge v0, p2, :cond_0

    .line 18
    .line 19
    int-to-long v1, p3

    .line 20
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget-object p0, Lcom/android/net/module/util/NetdUtils;->TAG:Ljava/lang/String;

    .line 27
    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string p2, "Retry Netd#networkAddInterface failure: "

    .line 31
    .line 32
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    throw v1

    .line 46
    :cond_1
    return-void
.end method

.method public static removeAndAddFlags([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {p2}, Lcom/android/net/module/util/NetdUtils;->validateFlag(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    array-length v1, p0

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_2

    .line 12
    .line 13
    aget-object v3, p0, v2

    .line 14
    .line 15
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-nez v4, :cond_1

    .line 20
    .line 21
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :catch_0
    move-exception p0

    .line 33
    goto :goto_2

    .line 34
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    new-array p0, p0, [Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    return-object p0

    .line 53
    :goto_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string p2, "Invalid InterfaceConfigurationParcel"

    .line 56
    .line 57
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    throw p1
.end method

.method public static removeRoutesFromLocalNetwork(Landroid/net/INetd;Ljava/util/List;)I
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/net/RouteInfo;

    .line 17
    .line 18
    :try_start_0
    sget-object v2, Lcom/android/net/module/util/NetdUtils$ModifyOperation;->REMOVE:Lcom/android/net/module/util/NetdUtils$ModifyOperation;

    .line 19
    .line 20
    const/16 v3, 0x63

    .line 21
    .line 22
    invoke-static {p0, v2, v3, v1}, Lcom/android/net/module/util/NetdUtils;->modifyRoute(Landroid/net/INetd;Lcom/android/net/module/util/NetdUtils$ModifyOperation;ILandroid/net/RouteInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return v0
.end method

.method public static setInterfaceConfig(Landroid/net/INetd;Landroid/net/InterfaceConfigurationParcel;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Landroid/net/INetd;->interfaceSetCfg(Landroid/net/InterfaceConfigurationParcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_0
    move-exception p0

    .line 6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    throw p1
.end method

.method public static setInterfaceDown(Landroid/net/INetd;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p0, p1}, Lcom/android/net/module/util/NetdUtils;->getInterfaceConfigParcel(Landroid/net/INetd;Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p1, Landroid/net/InterfaceConfigurationParcel;->flags:[Ljava/lang/String;

    .line 6
    .line 7
    const-string/jumbo v1, "up"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v2, "down"

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Lcom/android/net/module/util/NetdUtils;->removeAndAddFlags([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p1, Landroid/net/InterfaceConfigurationParcel;->flags:[Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {p0, p1}, Lcom/android/net/module/util/NetdUtils;->setInterfaceConfig(Landroid/net/INetd;Landroid/net/InterfaceConfigurationParcel;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static setInterfaceUp(Landroid/net/INetd;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p0, p1}, Lcom/android/net/module/util/NetdUtils;->getInterfaceConfigParcel(Landroid/net/INetd;Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p1, Landroid/net/InterfaceConfigurationParcel;->flags:[Ljava/lang/String;

    .line 6
    .line 7
    const-string/jumbo v1, "down"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v2, "up"

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Lcom/android/net/module/util/NetdUtils;->removeAndAddFlags([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p1, Landroid/net/InterfaceConfigurationParcel;->flags:[Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {p0, p1}, Lcom/android/net/module/util/NetdUtils;->setInterfaceConfig(Landroid/net/INetd;Landroid/net/InterfaceConfigurationParcel;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static tetherInterface(Landroid/net/INetd;Ljava/lang/String;Landroid/net/IpPrefix;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    const/16 v0, 0x14

    const/16 v1, 0x32

    .line 1
    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/net/module/util/NetdUtils;->tetherInterface(Landroid/net/INetd;Ljava/lang/String;Landroid/net/IpPrefix;II)V

    return-void
.end method

.method public static tetherInterface(Landroid/net/INetd;Ljava/lang/String;Landroid/net/IpPrefix;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .line 2
    invoke-interface {p0, p1}, Landroid/net/INetd;->tetherInterfaceAdd(Ljava/lang/String;)V

    .line 3
    invoke-static {p0, p1, p3, p4}, Lcom/android/net/module/util/NetdUtils;->networkAddInterface(Landroid/net/INetd;Ljava/lang/String;II)V

    .line 4
    sget-object p3, Lcom/android/net/module/util/NetdUtils$ModifyOperation;->ADD:Lcom/android/net/module/util/NetdUtils$ModifyOperation;

    new-instance p4, Landroid/net/RouteInfo;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p4, p2, v0, p1, v1}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    const/16 p2, 0x63

    invoke-static {p0, p3, p2, p4}, Lcom/android/net/module/util/NetdUtils;->modifyRoute(Landroid/net/INetd;Lcom/android/net/module/util/NetdUtils$ModifyOperation;ILandroid/net/RouteInfo;)V

    .line 5
    new-instance p4, Landroid/net/RouteInfo;

    new-instance v2, Landroid/net/IpPrefix;

    const-string/jumbo v3, "fe80::/64"

    invoke-direct {v2, v3}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    invoke-direct {p4, v2, v0, p1, v1}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    invoke-static {p0, p3, p2, p4}, Lcom/android/net/module/util/NetdUtils;->modifyRoute(Landroid/net/INetd;Lcom/android/net/module/util/NetdUtils$ModifyOperation;ILandroid/net/RouteInfo;)V

    return-void
.end method

.method public static tetherStart(Landroid/net/INetd;Z[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/net/TetherConfigParcel;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/TetherConfigParcel;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-boolean p1, v0, Landroid/net/TetherConfigParcel;->usingLegacyDnsProxy:Z

    .line 7
    .line 8
    iput-object p2, v0, Landroid/net/TetherConfigParcel;->dhcpRanges:[Ljava/lang/String;

    .line 9
    .line 10
    invoke-interface {p0, v0}, Landroid/net/INetd;->tetherStartWithConfiguration(Landroid/net/TetherConfigParcel;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static toRouteInfoParcel(Landroid/net/RouteInfo;)Landroid/net/RouteInfoParcel;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/net/RouteInfo;->getType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const-string v2, ""

    .line 7
    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    .line 10
    const/4 v1, 0x7

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    const/16 v1, 0x9

    .line 14
    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string/jumbo v2, "throw"

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const-string/jumbo v2, "unreachable"

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    invoke-virtual {p0}, Landroid/net/RouteInfo;->hasGateway()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    :cond_3
    :goto_0
    new-instance v0, Landroid/net/RouteInfoParcel;

    .line 41
    .line 42
    invoke-direct {v0}, Landroid/net/RouteInfoParcel;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iput-object v1, v0, Landroid/net/RouteInfoParcel;->ifName:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iput-object v1, v0, Landroid/net/RouteInfoParcel;->destination:Ljava/lang/String;

    .line 60
    .line 61
    iput-object v2, v0, Landroid/net/RouteInfoParcel;->nextHop:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/net/RouteInfo;->getMtu()I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    iput p0, v0, Landroid/net/RouteInfoParcel;->mtu:I

    .line 68
    .line 69
    return-object v0
.end method

.method public static untetherInterface(Landroid/net/INetd;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x63

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0, p1}, Landroid/net/INetd;->tetherInterfaceRemove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0, p1}, Landroid/net/INetd;->networkRemoveInterface(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    invoke-interface {p0, v0, p1}, Landroid/net/INetd;->networkRemoveInterface(ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw v1
.end method

.method public static validateFlag(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string/jumbo v1, "flag contains space: "

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v0
.end method
