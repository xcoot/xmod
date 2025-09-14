.class public final Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static IS_CONNBYTE_EXTENSION_PRESENT:Z

.field public static mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;


# instance fields
.field public mNetdService:Landroid/net/INetd;

.field public mOemNetdService:Lcom/android/internal/net/IOemNetd;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    const-string/jumbo v0, "isIptablesExtensionPresent: connbytes "

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string/jumbo v1, "connbytes"

    .line 10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    move-result-wide v2

    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p0, v1}, Lcom/android/internal/net/IOemNetd;->isIptablesMatchEnabled(Ljava/lang/String;)I

    .line 21
    move-result p0

    .line 22
    const-string/jumbo v1, "knoxNwFilter-KnoxNetworkFilterFirewall"

    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    if-nez p0, :cond_0

    .line 42
    const/4 p0, 0x1

    .line 43
    sput-boolean p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->IS_CONNBYTE_EXTENSION_PRESENT:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_3

    .line 48
    :catch_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    goto :goto_2

    .line 54
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    goto :goto_0

    .line 58
    :goto_2
    return-void

    .line 59
    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 62
    throw p0
.end method

.method public static applyTcpRedirectRulesForCaptivePortal(II)V
    .locals 8

    .line 1
    if-gtz p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, "_knox_nwfilter_cp_rdt"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v3

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    new-instance v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 32
    const-string v2, " -m owner --uid-owner "

    .line 34
    const-string v4, " -o lo -p tcp --dport 80 "

    .line 36
    invoke-static {p0, v2, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v4

    .line 40
    new-instance p0, Ljava/lang/StringBuilder;

    .line 42
    const-string v2, "REDIRECT --to-port "

    .line 44
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-static {p0, p1}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 50
    move-result-object v5

    .line 51
    sget-object v7, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;->APPEND:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;

    .line 53
    const-string v6, ""

    .line 55
    move-object v2, v1

    .line 56
    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 59
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    const/4 p0, 0x1

    .line 63
    const-string p1, "*nat"

    .line 65
    const/4 v1, 0x0

    .line 66
    const/4 v2, 0x4

    .line 67
    invoke-static {v2, p1, v1, v0, p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 70
    return-void
.end method

.method public static blockAppGeneratedDOT(I)V
    .locals 12

    .line 1
    const-string v0, "_knox_nwfilter_dot_drop"

    .line 3
    invoke-static {p0, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    if-nez p0, :cond_0

    .line 9
    const/16 p0, 0x2710

    .line 11
    const/16 v1, 0x4e1f

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const v1, 0x186a0

    .line 17
    mul-int/2addr p0, v1

    .line 18
    add-int/lit8 v1, p0, 0x1

    .line 20
    const v2, 0x1869f

    .line 23
    add-int/2addr p0, v2

    .line 24
    move v11, v1

    .line 25
    move v1, p0

    .line 26
    move p0, v11

    .line 27
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    const-string p0, "-"

    .line 37
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 47
    new-instance v7, Ljava/util/ArrayList;

    .line 49
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 52
    new-instance v8, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 54
    const-string v9, " -m owner --uid-owner "

    .line 56
    const-string v1, " -p udp --dport 853 "

    .line 58
    invoke-static {v9, p0, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object v3

    .line 62
    sget-object v10, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;->INSERT:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;

    .line 64
    const-string v4, "DROP"

    .line 66
    const-string v5, ""

    .line 68
    move-object v1, v8

    .line 69
    move-object v2, v0

    .line 70
    move-object v6, v10

    .line 71
    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 74
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v8, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 79
    const-string v1, " -p tcp --dport 853 "

    .line 81
    invoke-static {v9, p0, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object v3

    .line 85
    const-string v4, "DROP"

    .line 87
    const-string v5, ""

    .line 89
    move-object v1, v8

    .line 90
    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 93
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    const/16 p0, 0x2e

    .line 98
    const-string v0, "*filter"

    .line 100
    const/4 v1, 0x1

    .line 101
    const/4 v2, 0x0

    .line 102
    invoke-static {p0, v0, v2, v7, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 105
    return-void
.end method

.method public static createChainsCmd(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    check-cast p1, Ljava/util/HashMap;

    .line 8
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/util/Map$Entry;

    .line 28
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/util/Collection;

    .line 34
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {p0, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->createTableHeaderCmd(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 45
    move-result-object p1

    .line 46
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object p1

    .line 50
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_2

    .line 56
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Ljava/util/Map$Entry;

    .line 62
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Ljava/util/List;

    .line 68
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 71
    move-result-object v1

    .line 72
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_1

    .line 78
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    move-result-object v2

    .line 82
    move-object v6, v2

    .line 83
    check-cast v6, Ljava/lang/String;

    .line 85
    new-instance v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 87
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 90
    move-result-object v3

    .line 91
    move-object v4, v3

    .line 92
    check-cast v4, Ljava/lang/String;

    .line 94
    sget-object v8, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;->INSERT:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;

    .line 96
    const-string v5, ""

    .line 98
    const-string v7, ""

    .line 100
    move-object v3, v2

    .line 101
    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 104
    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->parseIptablesRestoreCmd(Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;)Ljava/lang/String;

    .line 107
    move-result-object v2

    .line 108
    move-object v3, p0

    .line 109
    check-cast v3, Ljava/util/ArrayList;

    .line 111
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    goto :goto_1

    .line 115
    :cond_2
    const-string p1, "COMMIT\n"

    .line 117
    move-object v0, p0

    .line 118
    check-cast v0, Ljava/util/ArrayList;

    .line 120
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    return-object p0
.end method

.method public static createFilterMap(I)Ljava/util/Map;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    const-string v1, "_knox_nwfilter_unauth_drop"

    .line 8
    invoke-static {p0, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    const-string v2, "_knox_nwfilter_dot_drop"

    .line 14
    invoke-static {p0, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    const-string v3, "_knox_nwfilter_dns_drop"

    .line 20
    invoke-static {p0, v3}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 24
    const-string v4, "_knox_nwfilter_app_act"

    .line 26
    invoke-static {p0, v4}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    filled-new-array {v1, v2, v3, p0}, [Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 37
    move-result-object p0

    .line 38
    const-string v1, "OUTPUT"

    .line 40
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-object v0
.end method

.method public static createIpTableChains(I)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->createFilterMap(I)Ljava/util/Map;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "*filter"

    .line 7
    invoke-static {v1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->removeChainsCmd(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    const/16 v2, 0x2e

    .line 13
    invoke-static {v2, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->runIptablesRestoreCmd(ILjava/util/List;)V

    .line 16
    invoke-static {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->createFilterMap(I)Ljava/util/Map;

    .line 19
    move-result-object v0

    .line 20
    invoke-static {v1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->createChainsCmd(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 23
    move-result-object v0

    .line 24
    invoke-static {v2, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->runIptablesRestoreCmd(ILjava/util/List;)V

    .line 27
    invoke-static {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->createNatMap(I)Ljava/util/Map;

    .line 30
    move-result-object v0

    .line 31
    const-string v1, "*nat"

    .line 33
    invoke-static {v1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->removeChainsCmd(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 36
    move-result-object v0

    .line 37
    const/4 v2, 0x4

    .line 38
    invoke-static {v2, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->runIptablesRestoreCmd(ILjava/util/List;)V

    .line 41
    invoke-static {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->createNatMap(I)Ljava/util/Map;

    .line 44
    move-result-object v0

    .line 45
    invoke-static {v1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->createChainsCmd(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 48
    move-result-object v0

    .line 49
    invoke-static {v2, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->runIptablesRestoreCmd(ILjava/util/List;)V

    .line 52
    invoke-static {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->createMangleMapList(I)Ljava/util/Map;

    .line 55
    move-result-object v0

    .line 56
    const-string v1, "*mangle"

    .line 58
    invoke-static {v1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->removeChainsCmd(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 61
    move-result-object v0

    .line 62
    const/4 v2, 0x6

    .line 63
    invoke-static {v2, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->runIptablesRestoreCmd(ILjava/util/List;)V

    .line 66
    invoke-static {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->createMangleMapList(I)Ljava/util/Map;

    .line 69
    move-result-object p0

    .line 70
    invoke-static {v1, p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->createChainsCmd(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 73
    move-result-object p0

    .line 74
    invoke-static {v2, p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->runIptablesRestoreCmd(ILjava/util/List;)V

    .line 77
    return-void
.end method

.method public static createMangleMapList(I)Ljava/util/Map;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    const-string v1, "_knox_nwfilter_tcp_mark"

    .line 8
    invoke-static {p0, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    const-string v2, "_knox_nwfilter_udp_mark"

    .line 14
    invoke-static {p0, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    const-string v3, "_knox_nwfilter_dns_mark"

    .line 20
    invoke-static {p0, v3}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 24
    const-string v4, "_knox_nwfilter_udp_exempt"

    .line 26
    invoke-static {p0, v4}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v4

    .line 30
    const-string v5, "_knox_nwfilter_app_act"

    .line 32
    invoke-static {p0, v5}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v5

    .line 36
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 43
    move-result-object v1

    .line 44
    const-string v2, "OUTPUT"

    .line 46
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    const-string v2, "_knox_nwfilter_tcp_rdt"

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    const-string v2, "_knox_nwfilter_udp_rdt"

    .line 68
    invoke-static {p0, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 72
    const-string v3, "_knox_nwfilter_dns_rdt"

    .line 74
    invoke-static {p0, v3}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object p0

    .line 78
    filled-new-array {v1, v2, p0}, [Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 82
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 85
    move-result-object p0

    .line 86
    const-string v1, "PREROUTING"

    .line 88
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-object v0
.end method

.method public static createNatMap(I)Ljava/util/Map;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    const-string v1, "_knox_nwfilter_udp_rdt"

    .line 8
    invoke-static {p0, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v2

    .line 12
    const-string v1, "_knox_nwfilter_udp_exempt"

    .line 14
    invoke-static {p0, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v3

    .line 18
    const-string v1, "_knox_nwfilter_dns_rdt"

    .line 20
    invoke-static {p0, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v4

    .line 24
    const-string v1, "_knox_nwfilter_app_rdt"

    .line 26
    invoke-static {p0, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v5

    .line 30
    const-string v1, "_knox_nwfilter_tcp_rdt"

    .line 32
    invoke-static {p0, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v6

    .line 36
    const-string v1, "_knox_nwfilter_cp_rdt"

    .line 38
    invoke-static {p0, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v7

    .line 42
    const-string v1, "_knox_nwfilter_dns_exempt"

    .line 44
    invoke-static {p0, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object v8

    .line 48
    const-string v1, "_knox_nwfilter_app_act"

    .line 50
    invoke-static {p0, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v9

    .line 54
    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 58
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 61
    move-result-object p0

    .line 62
    const-string v1, "OUTPUT"

    .line 64
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-object v0
.end method

.method public static createTableHeaderCmd(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    const-string p0, "\n"

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    if-eqz p1, :cond_1

    .line 28
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object p1

    .line 32
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Ljava/lang/String;

    .line 44
    if-eqz v2, :cond_0

    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 50
    const-string v3, ":"

    .line 52
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v2, " -"

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    return-object v1
.end method

.method public static denyUnAuthorizedPackets(ILjava/lang/String;Ljava/util/List;)V
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 3
    const-string v1, "*filter"

    .line 5
    if-eqz p2, :cond_7

    .line 7
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 13
    goto/16 :goto_5

    .line 15
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    invoke-static/range {p0 .. p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 23
    move-result v3

    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string v3, "_knox_nwfilter_unauth_drop"

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    new-instance v3, Ljava/util/ArrayList;

    .line 38
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 41
    new-instance v10, Ljava/util/ArrayList;

    .line 43
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 46
    :try_start_0
    const-string/jumbo v4, "dns"

    .line 49
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 52
    move-result v4
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    sget-object v11, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;->INSERT:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;

    .line 55
    const/4 v12, 0x1

    .line 56
    const/4 v13, 0x0

    .line 57
    const-string v14, "_"

    .line 59
    const-string v15, " -p udp -d "

    .line 61
    const-string v9, " -m owner ! --uid-owner "

    .line 63
    const-string v8, " --dport "

    .line 65
    if-eqz v4, :cond_2

    .line 67
    :try_start_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 70
    move-result-object v16

    .line 71
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_2

    .line 77
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    move-result-object v4

    .line 81
    check-cast v4, Ljava/lang/String;

    .line 83
    invoke-virtual {v4, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 86
    move-result-object v4

    .line 87
    aget-object v5, v4, v13

    .line 89
    aget-object v4, v4, v12

    .line 91
    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 94
    move-result-object v6

    .line 95
    instance-of v6, v6, Ljava/net/Inet4Address;

    .line 97
    if-eqz v6, :cond_1

    .line 99
    new-instance v7, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 101
    new-instance v6, Ljava/lang/StringBuilder;

    .line 103
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object v6

    .line 132
    const-string v17, "DROP"

    .line 134
    const-string v18, ""

    .line 136
    move-object v4, v7

    .line 137
    move-object v5, v2

    .line 138
    move-object v12, v7

    .line 139
    move-object/from16 v7, v17

    .line 141
    move-object v13, v8

    .line 142
    move-object/from16 v8, v18

    .line 144
    move-object/from16 v18, v1

    .line 146
    move-object v1, v9

    .line 147
    move-object v9, v11

    .line 148
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 151
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    goto :goto_1

    .line 155
    :cond_1
    move-object/from16 v18, v1

    .line 157
    move-object v13, v8

    .line 158
    move-object v1, v9

    .line 159
    new-instance v12, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 161
    new-instance v6, Ljava/lang/StringBuilder;

    .line 163
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 184
    move-result-object v4

    .line 185
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    move-result-object v6

    .line 192
    const-string v7, "DROP"

    .line 194
    const-string v8, ""

    .line 196
    move-object v4, v12

    .line 197
    move-object v5, v2

    .line 198
    move-object v9, v11

    .line 199
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 202
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    :goto_1
    move-object v9, v1

    .line 206
    move-object v8, v13

    .line 207
    move-object/from16 v1, v18

    .line 209
    const/4 v12, 0x1

    .line 210
    const/4 v13, 0x0

    .line 211
    goto/16 :goto_0

    .line 213
    :cond_2
    move-object/from16 v18, v1

    .line 215
    move-object v13, v8

    .line 216
    move-object v1, v9

    .line 217
    const-string/jumbo v4, "tcp"

    .line 220
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 223
    move-result v4

    .line 224
    if-eqz v4, :cond_4

    .line 226
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 229
    move-result-object v12

    .line 230
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 233
    move-result v4

    .line 234
    if-eqz v4, :cond_4

    .line 236
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 239
    move-result-object v4

    .line 240
    check-cast v4, Ljava/lang/String;

    .line 242
    invoke-virtual {v4, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 245
    move-result-object v4

    .line 246
    const/4 v5, 0x0

    .line 247
    aget-object v6, v4, v5

    .line 249
    const/4 v5, 0x1

    .line 250
    aget-object v4, v4, v5

    .line 252
    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 255
    move-result-object v5

    .line 256
    instance-of v5, v5, Ljava/net/Inet4Address;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    .line 258
    const-string v7, " -p tcp -m state --state NEW -d "

    .line 260
    if-eqz v5, :cond_3

    .line 262
    :try_start_2
    new-instance v9, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 264
    new-instance v5, Ljava/lang/StringBuilder;

    .line 266
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 287
    move-result-object v4

    .line 288
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    move-result-object v6

    .line 295
    const-string v7, "DROP"

    .line 297
    const-string v8, ""

    .line 299
    move-object v4, v9

    .line 300
    move-object v5, v2

    .line 301
    move-object/from16 v16, v12

    .line 303
    move-object v12, v9

    .line 304
    move-object v9, v11

    .line 305
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 308
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    goto :goto_3

    .line 312
    :cond_3
    move-object/from16 v16, v12

    .line 314
    new-instance v12, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 316
    new-instance v5, Ljava/lang/StringBuilder;

    .line 318
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 339
    move-result-object v4

    .line 340
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    move-result-object v6

    .line 347
    const-string v7, "DROP"

    .line 349
    const-string v8, ""

    .line 351
    move-object v4, v12

    .line 352
    move-object v5, v2

    .line 353
    move-object v9, v11

    .line 354
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 357
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    :goto_3
    move-object/from16 v12, v16

    .line 362
    goto/16 :goto_2

    .line 364
    :cond_4
    const-string/jumbo v4, "udp"

    .line 367
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 370
    move-result v0

    .line 371
    if-eqz v0, :cond_6

    .line 373
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 376
    move-result-object v0

    .line 377
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 380
    move-result v4

    .line 381
    if-eqz v4, :cond_6

    .line 383
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 386
    move-result-object v4

    .line 387
    check-cast v4, Ljava/lang/String;

    .line 389
    invoke-virtual {v4, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 392
    move-result-object v4

    .line 393
    const/4 v12, 0x0

    .line 394
    aget-object v5, v4, v12

    .line 396
    const/4 v6, 0x1

    .line 397
    aget-object v4, v4, v6

    .line 399
    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 402
    move-result-object v6

    .line 403
    instance-of v6, v6, Ljava/net/Inet4Address;

    .line 405
    if-eqz v6, :cond_5

    .line 407
    new-instance v9, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 409
    new-instance v6, Ljava/lang/StringBuilder;

    .line 411
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 414
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 432
    move-result-object v4

    .line 433
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 439
    move-result-object v6

    .line 440
    const-string v7, "DROP"

    .line 442
    const-string v8, ""

    .line 444
    move-object v4, v9

    .line 445
    move-object v5, v2

    .line 446
    move-object v12, v9

    .line 447
    move-object v9, v11

    .line 448
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 451
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    goto :goto_4

    .line 455
    :cond_5
    new-instance v12, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 457
    new-instance v6, Ljava/lang/StringBuilder;

    .line 459
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 462
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 480
    move-result-object v4

    .line 481
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 487
    move-result-object v6

    .line 488
    const-string v7, "DROP"

    .line 490
    const-string v8, ""

    .line 492
    move-object v4, v12

    .line 493
    move-object v5, v2

    .line 494
    move-object v9, v11

    .line 495
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 498
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    goto :goto_4

    .line 502
    :cond_6
    const/4 v0, 0x4

    .line 503
    const/4 v1, 0x0

    .line 504
    move-object/from16 v2, v18

    .line 506
    const/4 v4, 0x1

    .line 507
    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 510
    const/4 v0, 0x6

    .line 511
    invoke-static {v0, v2, v1, v10, v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0

    .line 514
    :catch_0
    :cond_7
    :goto_5
    return-void
.end method

.method public static exemptUdpPacketFromNwFilterRange(II)V
    .locals 12

    .line 1
    const-string v0, "_knox_nwfilter_udp_exempt"

    .line 3
    invoke-static {p0, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    new-instance v7, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 12
    if-nez p0, :cond_0

    .line 14
    const/16 p0, 0x2710

    .line 16
    const/16 v1, 0x4e1f

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const v1, 0x186a0

    .line 22
    mul-int/2addr p0, v1

    .line 23
    add-int/lit8 v1, p0, 0x1

    .line 25
    const v2, 0x1869f

    .line 28
    add-int/2addr p0, v2

    .line 29
    move v11, v1

    .line 30
    move v1, p0

    .line 31
    move p0, v11

    .line 32
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    const-string p0, "-"

    .line 42
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 52
    new-instance v8, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 54
    const-string v9, " -m owner --uid-owner "

    .line 56
    const-string v1, " -p udp --dport 5353 "

    .line 58
    invoke-static {v9, p0, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object v3

    .line 62
    sget-object v10, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;->INSERT:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;

    .line 64
    const-string v4, "ACCEPT"

    .line 66
    const-string v5, ""

    .line 68
    move-object v1, v8

    .line 69
    move-object v2, v0

    .line 70
    move-object v6, v10

    .line 71
    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 74
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v8, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 79
    const-string v1, " -p udp --dport 1900 "

    .line 81
    invoke-static {v9, p0, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object v3

    .line 85
    const-string v4, "ACCEPT"

    .line 87
    const-string v5, ""

    .line 89
    move-object v1, v8

    .line 90
    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 93
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v8, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 98
    const-string v1, " -p udp -m pkttype --pkt-type multicast "

    .line 100
    invoke-static {v9, p0, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    move-result-object v3

    .line 104
    const-string v4, "ACCEPT"

    .line 106
    const-string v5, ""

    .line 108
    move-object v1, v8

    .line 109
    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 112
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    const/4 p0, 0x2

    .line 116
    const/4 v0, 0x0

    .line 117
    const/4 v1, 0x1

    .line 118
    if-ne p1, p0, :cond_1

    .line 120
    const/4 p0, 0x4

    .line 121
    const-string v2, "*nat"

    .line 123
    invoke-static {p0, v2, v0, v7, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 126
    :cond_1
    const/16 p0, 0xa

    .line 128
    if-ne p1, p0, :cond_2

    .line 130
    const/4 p0, 0x6

    .line 131
    const-string p1, "*mangle"

    .line 133
    invoke-static {p0, p1, v0, v7, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 136
    :cond_2
    return-void
.end method

.method public static flushAppGeneratedDOTBlockRules(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    const-string p0, "_knox_nwfilter_dot_drop"

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    const/16 v0, 0x2e

    .line 20
    const-string v1, "*filter"

    .line 22
    invoke-static {v0, v1, p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRule(ILjava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static flushAppGeneratedRedirectTcpConnRules(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    const-string p0, "_knox_nwfilter_tcp_rdt"

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    const/4 v0, 0x4

    .line 19
    const-string v1, "*nat"

    .line 21
    invoke-static {v0, v1, p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRule(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static flushAppGeneratedRedirectUdpConnRules(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    const-string p0, "_knox_nwfilter_udp_rdt"

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    const/4 v0, 0x4

    .line 19
    const-string v1, "*nat"

    .line 21
    invoke-static {v0, v1, p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRule(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static flushAppGeneratedRedirectV6TcpConnRules(I)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    const-string v1, "_knox_nwfilter_tcp_mark"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "*mangle"

    .line 20
    const/4 v2, 0x6

    .line 21
    invoke-static {v2, v1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRule(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string v3, "_knox_nwfilter_tcp_rdt"

    .line 34
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    invoke-static {v2, v1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRule(ILjava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v0, ";"

    .line 46
    const-string v1, " prio 10"

    .line 48
    const-string v2, " table "

    .line 50
    const-string v3, " from all fwmark "

    .line 52
    const-string v4, ";ip -6 rule del "

    .line 54
    const-string v5, " local default dev lo table "

    .line 56
    const-string/jumbo v6, "ip -6 route del "

    .line 59
    if-nez p0, :cond_0

    .line 61
    new-instance p0, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    new-instance v6, Ljava/lang/StringBuilder;

    .line 68
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    const/16 v5, 0x3e

    .line 73
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 76
    move-result-object v7

    .line 77
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v6

    .line 84
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    .line 92
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object p0

    .line 129
    invoke-static {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->runSingleCommand(Ljava/lang/String;)V

    .line 132
    goto :goto_0

    .line 133
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 135
    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    new-instance v6, Ljava/lang/StringBuilder;

    .line 140
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    const/16 v5, 0x3f

    .line 145
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 148
    move-result-object v7

    .line 149
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    move-result-object v6

    .line 156
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    .line 164
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 170
    move-result-object v3

    .line 171
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 180
    move-result-object v2

    .line 181
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    move-result-object v1

    .line 191
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    move-result-object p0

    .line 201
    invoke-static {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->runSingleCommand(Ljava/lang/String;)V

    .line 204
    :goto_0
    return-void
.end method

.method public static flushAppGeneratedRedirectV6UdpConnRules(I)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    const-string v1, "_knox_nwfilter_udp_mark"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "*mangle"

    .line 20
    const/4 v2, 0x6

    .line 21
    invoke-static {v2, v1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRule(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string v3, "_knox_nwfilter_udp_rdt"

    .line 34
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    invoke-static {v2, v1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRule(ILjava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v0, ";"

    .line 46
    const-string v1, " prio 10"

    .line 48
    const-string v2, " table "

    .line 50
    const-string v3, " from all fwmark "

    .line 52
    const-string v4, ";ip -6 rule del "

    .line 54
    const-string v5, " local default dev lo table "

    .line 56
    const-string/jumbo v6, "ip -6 route del "

    .line 59
    if-nez p0, :cond_0

    .line 61
    new-instance p0, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    new-instance v6, Ljava/lang/StringBuilder;

    .line 68
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    const/16 v5, 0x3e

    .line 73
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 76
    move-result-object v7

    .line 77
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v6

    .line 84
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    .line 92
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object p0

    .line 129
    invoke-static {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->runSingleCommand(Ljava/lang/String;)V

    .line 132
    goto :goto_0

    .line 133
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 135
    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    new-instance v6, Ljava/lang/StringBuilder;

    .line 140
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    const/16 v5, 0x3f

    .line 145
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 148
    move-result-object v7

    .line 149
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    move-result-object v6

    .line 156
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    .line 164
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 170
    move-result-object v3

    .line 171
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 180
    move-result-object v2

    .line 181
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    move-result-object v1

    .line 191
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    move-result-object p0

    .line 201
    invoke-static {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->runSingleCommand(Ljava/lang/String;)V

    .line 204
    :goto_0
    return-void
.end method

.method public static flushExemptDnsRulesFromNat(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    const-string v1, "_knox_nwfilter_dns_exempt"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x4

    .line 19
    const-string v2, "*nat"

    .line 21
    invoke-static {v1, v2, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRule(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string p0, "_knox_nwfilter_dns_drop"

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 41
    const/16 v0, 0x2e

    .line 43
    const-string v1, "*filter"

    .line 45
    invoke-static {v0, v1, p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRule(ILjava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static flushRedirectDnsQueryRules(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    const-string p0, "_knox_nwfilter_dns_rdt"

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    const/4 v0, 0x4

    .line 19
    const-string v1, "*nat"

    .line 21
    invoke-static {v0, v1, p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRule(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static flushRedirectV6DnsQueryRules(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    const-string v1, "_knox_nwfilter_dns_mark"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "*mangle"

    .line 20
    const/4 v2, 0x6

    .line 21
    invoke-static {v2, v1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRule(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string p0, "_knox_nwfilter_dns_rdt"

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 41
    invoke-static {v2, v1, p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRule(ILjava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static flushTcpRedirectRulesForCaptivePortal(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    const-string p0, "_knox_nwfilter_cp_rdt"

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    const/4 v0, 0x4

    .line 19
    const-string v1, "*nat"

    .line 21
    invoke-static {v0, v1, p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRule(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static flushUdpPacketExemptRules(II)V
    .locals 2

    .line 1
    const-string v0, "_knox_nwfilter_udp_exempt"

    .line 3
    invoke-static {p0, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x2

    .line 8
    if-ne p1, v0, :cond_0

    .line 10
    const/4 v0, 0x4

    .line 11
    const-string v1, "*nat"

    .line 13
    invoke-static {v0, v1, p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRule(ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_0
    const/16 v0, 0xa

    .line 18
    if-ne p1, v0, :cond_1

    .line 20
    const/4 p1, 0x6

    .line 21
    const-string v0, "*mangle"

    .line 23
    invoke-static {p1, v0, p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRule(ILjava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_1
    return-void
.end method

.method public static flushUnAuthorizedPackets(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    const-string p0, "_knox_nwfilter_unauth_drop"

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    const/16 v0, 0x2e

    .line 20
    const-string v1, "*filter"

    .line 22
    invoke-static {v0, v1, p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRule(ILjava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static insertRule(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 4
    move-result-object p2

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 14
    return-void
.end method

.method public static insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-static {p1, p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->createTableHeaderCmd(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 13
    const-string p1, "COMMIT\n"

    .line 15
    if-eqz p4, :cond_1

    .line 17
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object p2

    .line 21
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result p4

    .line 25
    if-eqz p4, :cond_1

    .line 27
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object p4

    .line 31
    check-cast p4, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 33
    if-eqz p4, :cond_0

    .line 35
    iget-object v1, p4, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;->actionType:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;

    .line 37
    new-instance v2, Ljava/util/ArrayList;

    .line 39
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    sget-object v3, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;->DELETE:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;

    .line 44
    iput-object v3, p4, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;->actionType:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;

    .line 46
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 49
    invoke-static {p4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->parseIptablesRestoreCmd(Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;)Ljava/lang/String;

    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-static {p0, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->runIptablesRestoreCmd(ILjava/util/List;)V

    .line 62
    iput-object v1, p4, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;->actionType:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    if-eqz p3, :cond_4

    .line 67
    new-instance p2, Ljava/util/ArrayList;

    .line 69
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 75
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 78
    move-result-object p3

    .line 79
    :cond_2
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    move-result p4

    .line 83
    if-eqz p4, :cond_3

    .line 85
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    move-result-object p4

    .line 89
    check-cast p4, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 91
    if-eqz p4, :cond_2

    .line 93
    invoke-static {p4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->parseIptablesRestoreCmd(Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;)Ljava/lang/String;

    .line 96
    move-result-object p4

    .line 97
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    goto :goto_1

    .line 101
    :cond_3
    move-object v0, p2

    .line 102
    :cond_4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-static {p0, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->runIptablesRestoreCmd(ILjava/util/List;)V

    .line 108
    return-void
.end method

.method public static parseIptablesRestoreCmd(Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;)Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;->actionType:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;

    .line 8
    if-nez v1, :cond_0

    .line 10
    const-string p0, ""

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;->secondParam:Ljava/lang/String;

    .line 19
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;->jumpChain:Ljava/lang/String;

    .line 21
    iget-object v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;->firstParam:Ljava/lang/String;

    .line 23
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;->actionChain:Ljava/lang/String;

    .line 25
    const/4 v5, 0x0

    .line 26
    const-string v6, " -j "

    .line 28
    const-string v7, "\n"

    .line 30
    if-eqz v1, :cond_4

    .line 32
    const/4 v8, 0x1

    .line 33
    if-eq v1, v8, :cond_3

    .line 35
    const/4 v8, 0x2

    .line 36
    if-eq v1, v8, :cond_2

    .line 38
    const/4 v2, 0x3

    .line 39
    if-eq v1, v2, :cond_1

    .line 41
    move-object v0, v5

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string v1, "-X "

    .line 45
    invoke-static {v0, v1, p0, v7}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const-string v1, "-D "

    .line 51
    invoke-static {v0, v1, p0, v4, v6}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {v0, v3, v2, v7}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    const-string v1, "-I "

    .line 60
    invoke-static {v0, v1, p0, v4, v6}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {v0, v3, v2, v7}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    goto :goto_0

    .line 67
    :cond_4
    const-string v1, "-A "

    .line 69
    invoke-static {v0, v1, p0, v4, v6}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {v0, v3, v2, v7}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :goto_0
    if-eqz v0, :cond_5

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    :cond_5
    return-object v5
.end method

.method public static redirectAppGeneratedTcpConn(IILjava/lang/String;)V
    .locals 16

    .line 1
    move/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    const-string v2, "_knox_nwfilter_tcp_rdt"

    .line 7
    invoke-static {v0, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v2

    .line 11
    if-nez v0, :cond_0

    .line 13
    const/16 v0, 0x2710

    .line 15
    const/16 v3, 0x4e1f

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const v3, 0x186a0

    .line 21
    mul-int/2addr v0, v3

    .line 22
    add-int/lit8 v3, v0, 0x1

    .line 24
    const v4, 0x1869f

    .line 27
    add-int/2addr v0, v4

    .line 28
    move v15, v3

    .line 29
    move v3, v0

    .line 30
    move v0, v15

    .line 31
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    const-string v0, "-"

    .line 41
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    new-instance v9, Ljava/util/ArrayList;

    .line 53
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 56
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    .line 59
    move-result v3

    .line 60
    sget-object v10, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;->INSERT:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;

    .line 62
    const-string v11, " ! -o lo -p tcp -m state --state NEW "

    .line 64
    const-string v12, "REDIRECT --to-port "

    .line 66
    const-string v13, " -m owner --uid-owner "

    .line 68
    if-nez v3, :cond_1

    .line 70
    new-instance v14, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 72
    const-string v3, " -o lo -p tcp -d "

    .line 74
    const-string v4, " -m state --state NEW "

    .line 76
    move-object/from16 v5, p2

    .line 78
    invoke-static {v13, v0, v3, v5, v4}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    move-result-object v5

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-static {v3, v1}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 90
    move-result-object v6

    .line 91
    const-string v7, ""

    .line 93
    move-object v3, v14

    .line 94
    move-object v4, v2

    .line 95
    move-object v8, v10

    .line 96
    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 99
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v14, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 104
    invoke-static {v13, v0, v11}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    move-result-object v5

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    .line 110
    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 116
    move-result-object v6

    .line 117
    const-string v7, ""

    .line 119
    move-object v3, v14

    .line 120
    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 123
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    goto :goto_1

    .line 127
    :cond_1
    new-instance v14, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 129
    invoke-static {v13, v0, v11}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    move-result-object v5

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    .line 135
    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 141
    move-result-object v6

    .line 142
    const-string v7, ""

    .line 144
    move-object v3, v14

    .line 145
    move-object v4, v2

    .line 146
    move-object v8, v10

    .line 147
    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 150
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    :goto_1
    const/4 v0, 0x4

    .line 154
    const-string v1, "*nat"

    .line 156
    const/4 v2, 0x1

    .line 157
    const/4 v3, 0x0

    .line 158
    invoke-static {v0, v1, v3, v9, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 161
    return-void
.end method

.method public static redirectAppGeneratedUdpConn(IILjava/lang/String;)V
    .locals 19

    .line 1
    move/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    const-string v3, "_knox_nwfilter_udp_rdt"

    .line 9
    invoke-static {v0, v3}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v3

    .line 13
    new-instance v10, Ljava/util/ArrayList;

    .line 15
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 18
    sget-object v11, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;->APPEND:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;

    .line 20
    const-string v12, "*nat"

    .line 22
    const-string v9, "REDIRECT --to-port "

    .line 24
    const-string v8, " -p udp -m connmark --mark "

    .line 26
    const-string v4, " -p udp -m state --state NEW "

    .line 28
    const-string v5, " -p udp -m state --state NEW -m connbytes --connbytes 1:1 --connbytes-dir original --connbytes-mode packets "

    .line 30
    const-string v7, "CONNMARK --set-mark "

    .line 32
    if-nez v0, :cond_3

    .line 34
    sget-boolean v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->IS_CONNBYTE_EXTENSION_PRESENT:Z

    .line 36
    const-string v6, " -m owner --uid-owner 10000-19999 -o lo -d "

    .line 38
    const/16 v13, 0x3e

    .line 40
    if-eqz v0, :cond_1

    .line 42
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 50
    invoke-static {v6, v2, v5}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v6

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-static {v2, v13}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 62
    move-result-object v2

    .line 63
    const-string v16, ""

    .line 65
    move-object v4, v0

    .line 66
    move-object v5, v3

    .line 67
    move-object v14, v7

    .line 68
    move-object v7, v2

    .line 69
    move-object v2, v8

    .line 70
    move-object/from16 v8, v16

    .line 72
    move-object v15, v9

    .line 73
    move-object v9, v11

    .line 74
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 77
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-static {v4, v13}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 90
    move-result-object v7

    .line 91
    const-string v6, " -m owner --uid-owner 10000-19999 ! -o lo  -p udp -m state --state NEW -m connbytes --connbytes 1:1 --connbytes-dir original --connbytes-mode packets "

    .line 93
    const-string v8, ""

    .line 95
    move-object v4, v0

    .line 96
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 99
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :goto_0
    move-object v0, v2

    .line 103
    goto/16 :goto_1

    .line 105
    :cond_0
    move-object v14, v7

    .line 106
    move-object v2, v8

    .line 107
    move-object v15, v9

    .line 108
    new-instance v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    .line 112
    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-static {v4, v13}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 118
    move-result-object v7

    .line 119
    const-string v6, " -m owner --uid-owner 10000-19999 ! -o lo  -p udp -m state --state NEW -m connbytes --connbytes 1:1 --connbytes-dir original --connbytes-mode packets "

    .line 121
    const-string v8, ""

    .line 123
    move-object v4, v0

    .line 124
    move-object v5, v3

    .line 125
    move-object v9, v11

    .line 126
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 129
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    goto :goto_0

    .line 133
    :cond_1
    move-object v14, v7

    .line 134
    move-object v0, v8

    .line 135
    move-object v15, v9

    .line 136
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    .line 139
    move-result v5

    .line 140
    if-nez v5, :cond_2

    .line 142
    new-instance v9, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 144
    invoke-static {v6, v2, v4}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    move-result-object v6

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    .line 150
    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-static {v2, v13}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 156
    move-result-object v7

    .line 157
    const-string v8, ""

    .line 159
    move-object v4, v9

    .line 160
    move-object v5, v3

    .line 161
    move-object v2, v9

    .line 162
    move-object v9, v11

    .line 163
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 166
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 171
    new-instance v4, Ljava/lang/StringBuilder;

    .line 173
    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-static {v4, v13}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 179
    move-result-object v7

    .line 180
    const-string v6, " -m owner --uid-owner 10000-19999 ! -o lo  -p udp -m state --state NEW "

    .line 182
    const-string v8, ""

    .line 184
    move-object v4, v2

    .line 185
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 188
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    goto :goto_1

    .line 192
    :cond_2
    new-instance v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    .line 196
    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-static {v4, v13}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 202
    move-result-object v7

    .line 203
    const-string v6, " -m owner --uid-owner 10000-19999 ! -o lo  -p udp -m state --state NEW "

    .line 205
    const-string v8, ""

    .line 207
    move-object v4, v2

    .line 208
    move-object v5, v3

    .line 209
    move-object v9, v11

    .line 210
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 213
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    :goto_1
    new-instance v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 218
    new-instance v4, Ljava/lang/StringBuilder;

    .line 220
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    invoke-static {v4, v13}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 226
    move-result-object v6

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    .line 229
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 235
    move-result-object v7

    .line 236
    const-string v8, ""

    .line 238
    move-object v4, v2

    .line 239
    move-object v5, v3

    .line 240
    move-object v9, v11

    .line 241
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 244
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    const/4 v0, 0x4

    .line 248
    const/4 v1, 0x0

    .line 249
    const/4 v2, 0x1

    .line 250
    invoke-static {v0, v12, v1, v10, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 253
    goto/16 :goto_3

    .line 255
    :cond_3
    move-object v14, v7

    .line 256
    move-object v13, v8

    .line 257
    move-object v15, v9

    .line 258
    const v6, 0x186a0

    .line 261
    mul-int/2addr v0, v6

    .line 262
    add-int/lit8 v6, v0, 0x1

    .line 264
    const v7, 0x1869f

    .line 267
    add-int/2addr v0, v7

    .line 268
    new-instance v7, Ljava/lang/StringBuilder;

    .line 270
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 276
    const-string v6, "-"

    .line 278
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    move-result-object v0

    .line 288
    sget-boolean v6, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->IS_CONNBYTE_EXTENSION_PRESENT:Z

    .line 290
    const-string v7, " -o lo -d "

    .line 292
    const-string v9, " -m owner --uid-owner "

    .line 294
    const/16 v8, 0x3f

    .line 296
    if-eqz v6, :cond_5

    .line 298
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    .line 301
    move-result v4

    .line 302
    const-string v6, " ! -o lo  -p udp -m state --state NEW -m connbytes --connbytes 1:1 --connbytes-dir original --connbytes-mode packets "

    .line 304
    if-nez v4, :cond_4

    .line 306
    new-instance v4, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 308
    invoke-static {v9, v0, v7, v2, v5}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 311
    move-result-object v2

    .line 312
    new-instance v5, Ljava/lang/StringBuilder;

    .line 314
    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    invoke-static {v5, v8}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 320
    move-result-object v7

    .line 321
    const-string v17, ""

    .line 323
    move-object v5, v4

    .line 324
    move-object/from16 v18, v12

    .line 326
    move-object v12, v5

    .line 327
    move-object v5, v3

    .line 328
    move-object v1, v6

    .line 329
    move-object v6, v2

    .line 330
    move v2, v8

    .line 331
    move-object/from16 v8, v17

    .line 333
    move-object v2, v9

    .line 334
    move-object v9, v11

    .line 335
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 338
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    new-instance v12, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 343
    invoke-static {v2, v0, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 346
    move-result-object v6

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    .line 349
    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 352
    const/16 v1, 0x3f

    .line 354
    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 357
    move-result-object v7

    .line 358
    const-string v8, ""

    .line 360
    move-object v4, v12

    .line 361
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 364
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    goto/16 :goto_2

    .line 369
    :cond_4
    move-object v1, v6

    .line 370
    move-object v2, v9

    .line 371
    move-object/from16 v18, v12

    .line 373
    new-instance v12, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 375
    invoke-static {v2, v0, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 378
    move-result-object v6

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    .line 381
    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 384
    const/16 v1, 0x3f

    .line 386
    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 389
    move-result-object v7

    .line 390
    const-string v8, ""

    .line 392
    move-object v4, v12

    .line 393
    move-object v5, v3

    .line 394
    move-object v9, v11

    .line 395
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 398
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    goto/16 :goto_2

    .line 403
    :cond_5
    move-object v1, v2

    .line 404
    move-object v2, v9

    .line 405
    move-object/from16 v18, v12

    .line 407
    move v12, v8

    .line 408
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    .line 411
    move-result v5

    .line 412
    const-string v9, " ! -o lo  -p udp -m state --state NEW "

    .line 414
    if-nez v5, :cond_6

    .line 416
    new-instance v8, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 418
    invoke-static {v2, v0, v7, v1, v4}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 421
    move-result-object v6

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    .line 424
    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 427
    invoke-static {v1, v12}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 430
    move-result-object v7

    .line 431
    const-string v1, ""

    .line 433
    move-object v4, v8

    .line 434
    move-object v5, v3

    .line 435
    move-object v12, v8

    .line 436
    move-object v8, v1

    .line 437
    move-object v1, v9

    .line 438
    move-object v9, v11

    .line 439
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 442
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    new-instance v12, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 447
    invoke-static {v2, v0, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 450
    move-result-object v6

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    .line 453
    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 456
    const/16 v1, 0x3f

    .line 458
    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 461
    move-result-object v7

    .line 462
    const-string v8, ""

    .line 464
    move-object v4, v12

    .line 465
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 468
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    goto :goto_2

    .line 472
    :cond_6
    move-object v1, v9

    .line 473
    new-instance v12, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 475
    invoke-static {v2, v0, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 478
    move-result-object v6

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    .line 481
    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 484
    const/16 v1, 0x3f

    .line 486
    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 489
    move-result-object v7

    .line 490
    const-string v8, ""

    .line 492
    move-object v4, v12

    .line 493
    move-object v5, v3

    .line 494
    move-object v9, v11

    .line 495
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 498
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    :goto_2
    new-instance v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    .line 505
    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 508
    const/16 v2, 0x3f

    .line 510
    invoke-static {v1, v2}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 513
    move-result-object v6

    .line 514
    new-instance v1, Ljava/lang/StringBuilder;

    .line 516
    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 519
    move/from16 v2, p1

    .line 521
    invoke-static {v1, v2}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 524
    move-result-object v7

    .line 525
    const-string v8, ""

    .line 527
    move-object v4, v0

    .line 528
    move-object v5, v3

    .line 529
    move-object v9, v11

    .line 530
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 533
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    move-object/from16 v0, v18

    .line 538
    const/4 v1, 0x4

    .line 539
    const/4 v2, 0x0

    .line 540
    const/4 v3, 0x1

    .line 541
    invoke-static {v1, v0, v2, v10, v3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 544
    :goto_3
    return-void
.end method

.method public static redirectAppGeneratedV6TcpConn(IILjava/lang/String;)V
    .locals 35

    .line 1
    move/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    const-string v2, "_knox_nwfilter_tcp_mark"

    .line 7
    invoke-static {v0, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v2

    .line 11
    const-string v3, "_knox_nwfilter_tcp_rdt"

    .line 13
    invoke-static {v0, v3}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v9

    .line 17
    new-instance v10, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 22
    sget-object v11, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;->APPEND:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;

    .line 24
    const-string v12, "*mangle"

    .line 26
    const-string v8, ";"

    .line 28
    const-string v7, " prio 10"

    .line 30
    const-string v6, " table "

    .line 32
    const-string v5, " from all fwmark "

    .line 34
    const-string v4, ";ip -6 rule add "

    .line 36
    const-string v3, " local default dev lo table "

    .line 38
    const-string/jumbo v13, "ip -6 route add "

    .line 41
    const-string v14, "TPROXY --on-port "

    .line 43
    const-string v15, " -p tcp --syn -i lo -m mark --mark "

    .line 45
    move-object/from16 v16, v13

    .line 47
    const-string v13, " -p tcp -m connmark --mark "

    .line 49
    move-object/from16 v17, v3

    .line 51
    const-string v3, "CONNMARK --set-mark "

    .line 53
    if-nez v0, :cond_1

    .line 55
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    .line 58
    move-result v0

    .line 59
    move-object/from16 v18, v12

    .line 61
    const/16 v12, 0x3e

    .line 63
    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 67
    move-object/from16 v19, v4

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    .line 71
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-static {v4, v12}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 77
    move-result-object v20

    .line 78
    const-string v21, " -m owner --uid-owner 10000-19999 ! -o lo -p tcp -m state --state NEW "

    .line 80
    const-string v22, ""

    .line 82
    move-object/from16 v4, v17

    .line 84
    move-object v3, v0

    .line 85
    move-object/from16 v24, v4

    .line 87
    move-object/from16 v23, v19

    .line 89
    move-object v4, v2

    .line 90
    move-object/from16 v25, v5

    .line 92
    move-object/from16 v5, v21

    .line 94
    move-object/from16 v26, v6

    .line 96
    move-object/from16 v6, v20

    .line 98
    move-object/from16 v27, v7

    .line 100
    move-object/from16 v7, v22

    .line 102
    move-object/from16 v28, v8

    .line 104
    move-object v8, v11

    .line 105
    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 108
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    goto :goto_0

    .line 112
    :cond_0
    move-object/from16 v23, v4

    .line 114
    move-object/from16 v25, v5

    .line 116
    move-object/from16 v26, v6

    .line 118
    move-object/from16 v27, v7

    .line 120
    move-object/from16 v28, v8

    .line 122
    move-object/from16 v24, v17

    .line 124
    new-instance v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    .line 128
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-static {v4, v12}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 134
    move-result-object v6

    .line 135
    const-string v5, " -m owner --uid-owner 10000-19999 ! -o lo -p tcp -m state --state NEW "

    .line 137
    const-string v7, ""

    .line 139
    move-object v3, v0

    .line 140
    move-object v4, v2

    .line 141
    move-object v8, v11

    .line 142
    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 145
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :goto_0
    new-instance v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    .line 152
    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-static {v3, v12}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 158
    move-result-object v5

    .line 159
    const-string v6, "CONNMARK --restore-mark"

    .line 161
    const-string v7, ""

    .line 163
    move-object v3, v0

    .line 164
    move-object v4, v2

    .line 165
    move-object v8, v11

    .line 166
    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 169
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    .line 176
    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-static {v3, v12}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 182
    move-result-object v5

    .line 183
    const-string v6, "ACCEPT"

    .line 185
    const-string v7, ""

    .line 187
    move-object v3, v0

    .line 188
    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 191
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    .line 198
    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-static {v2, v12}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 204
    move-result-object v6

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    .line 207
    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-static {v2, v1}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 213
    move-result-object v7

    .line 214
    const-string v8, ""

    .line 216
    move-object v4, v0

    .line 217
    move-object v5, v9

    .line 218
    move-object v9, v11

    .line 219
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 222
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    move-object/from16 v8, v18

    .line 227
    const/4 v0, 0x6

    .line 228
    const/4 v1, 0x0

    .line 229
    const/4 v2, 0x1

    .line 230
    invoke-static {v0, v8, v1, v10, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    .line 235
    move-object/from16 v7, v16

    .line 237
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    .line 242
    move-object/from16 v6, v24

    .line 244
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 250
    move-result-object v2

    .line 251
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    move-result-object v1

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    move-object/from16 v5, v23

    .line 263
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    .line 268
    move-object/from16 v4, v25

    .line 270
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 276
    move-result-object v2

    .line 277
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    move-object/from16 v2, v26

    .line 282
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 288
    move-result-object v2

    .line 289
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    move-object/from16 v12, v27

    .line 294
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    move-result-object v1

    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    move-object/from16 v1, v28

    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    move-result-object v0

    .line 313
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->runSingleCommand(Ljava/lang/String;)V

    .line 316
    goto/16 :goto_2

    .line 318
    :cond_1
    move-object/from16 v27, v7

    .line 320
    move-object/from16 v29, v8

    .line 322
    move-object v8, v12

    .line 323
    move-object/from16 v7, v16

    .line 325
    move-object v12, v6

    .line 326
    move-object/from16 v6, v17

    .line 328
    move-object/from16 v34, v5

    .line 330
    move-object v5, v4

    .line 331
    move-object/from16 v4, v34

    .line 333
    const v16, 0x186a0

    .line 336
    mul-int v0, v0, v16

    .line 338
    move-object/from16 v25, v4

    .line 340
    add-int/lit8 v4, v0, 0x1

    .line 342
    const v16, 0x1869f

    .line 345
    add-int v0, v0, v16

    .line 347
    move-object/from16 v23, v5

    .line 349
    new-instance v5, Ljava/lang/StringBuilder;

    .line 351
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 357
    const-string v4, "-"

    .line 359
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    move-result-object v0

    .line 369
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    .line 372
    move-result v4

    .line 373
    const-string v5, " ! -o lo -p tcp -m state --state NEW "

    .line 375
    const-string v6, " -m owner --uid-owner "

    .line 377
    move-object/from16 v26, v12

    .line 379
    const/16 v12, 0x3f

    .line 381
    if-nez v4, :cond_2

    .line 383
    new-instance v4, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 385
    invoke-static {v6, v0, v5}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 388
    move-result-object v5

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    .line 391
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 394
    invoke-static {v0, v12}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 397
    move-result-object v6

    .line 398
    const-string v0, ""

    .line 400
    move-object v3, v4

    .line 401
    move-object v12, v4

    .line 402
    move-object/from16 v30, v25

    .line 404
    move-object v4, v2

    .line 405
    move-object/from16 v31, v23

    .line 407
    move-object/from16 v32, v17

    .line 409
    move-object/from16 v33, v7

    .line 411
    move-object v7, v0

    .line 412
    move-object v0, v8

    .line 413
    move-object v8, v11

    .line 414
    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 417
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    move-object v12, v0

    .line 421
    goto :goto_1

    .line 422
    :cond_2
    move-object/from16 v33, v7

    .line 424
    move-object v12, v8

    .line 425
    move-object/from16 v32, v17

    .line 427
    move-object/from16 v31, v23

    .line 429
    move-object/from16 v30, v25

    .line 431
    new-instance v8, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 433
    invoke-static {v6, v0, v5}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 436
    move-result-object v5

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    .line 439
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 442
    const/16 v3, 0x3f

    .line 444
    invoke-static {v0, v3}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 447
    move-result-object v6

    .line 448
    const-string v7, ""

    .line 450
    move-object v3, v8

    .line 451
    move-object v4, v2

    .line 452
    move-object v0, v8

    .line 453
    move-object v8, v11

    .line 454
    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 457
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    :goto_1
    new-instance v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 462
    new-instance v3, Ljava/lang/StringBuilder;

    .line 464
    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 467
    const/16 v4, 0x3f

    .line 469
    invoke-static {v3, v4}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 472
    move-result-object v5

    .line 473
    const-string v6, "CONNMARK --restore-mark"

    .line 475
    const-string v7, ""

    .line 477
    move-object v3, v0

    .line 478
    move-object v4, v2

    .line 479
    move-object v8, v11

    .line 480
    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 483
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    new-instance v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 488
    new-instance v3, Ljava/lang/StringBuilder;

    .line 490
    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 493
    const/16 v4, 0x3f

    .line 495
    invoke-static {v3, v4}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 498
    move-result-object v5

    .line 499
    const-string v6, "ACCEPT"

    .line 501
    const-string v7, ""

    .line 503
    move-object v3, v0

    .line 504
    move-object v4, v2

    .line 505
    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 508
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    new-instance v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 513
    new-instance v2, Ljava/lang/StringBuilder;

    .line 515
    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 518
    const/16 v3, 0x3f

    .line 520
    invoke-static {v2, v3}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 523
    move-result-object v6

    .line 524
    new-instance v2, Ljava/lang/StringBuilder;

    .line 526
    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 529
    invoke-static {v2, v1}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 532
    move-result-object v7

    .line 533
    const-string v8, ""

    .line 535
    move-object v4, v0

    .line 536
    move-object v5, v9

    .line 537
    move-object v9, v11

    .line 538
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 541
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    const/4 v0, 0x6

    .line 545
    const/4 v1, 0x0

    .line 546
    const/4 v2, 0x1

    .line 547
    invoke-static {v0, v12, v1, v10, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    .line 552
    move-object/from16 v1, v33

    .line 554
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    .line 559
    move-object/from16 v2, v32

    .line 561
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 564
    const/16 v2, 0x3f

    .line 566
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 569
    move-result-object v3

    .line 570
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 576
    move-result-object v1

    .line 577
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    move-object/from16 v1, v31

    .line 582
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    new-instance v1, Ljava/lang/StringBuilder;

    .line 587
    move-object/from16 v3, v30

    .line 589
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 592
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 595
    move-result-object v3

    .line 596
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    move-object/from16 v3, v26

    .line 601
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 607
    move-result-object v2

    .line 608
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    move-object/from16 v2, v27

    .line 613
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 619
    move-result-object v1

    .line 620
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    move-object/from16 v1, v29

    .line 625
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 631
    move-result-object v0

    .line 632
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->runSingleCommand(Ljava/lang/String;)V

    .line 635
    :goto_2
    return-void
.end method

.method public static redirectAppGeneratedV6UdpConn(IILjava/lang/String;)V
    .locals 34

    .line 1
    move/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    const-string v2, "_knox_nwfilter_udp_mark"

    .line 7
    invoke-static {v0, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v2

    .line 11
    const-string v3, "_knox_nwfilter_udp_rdt"

    .line 13
    invoke-static {v0, v3}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v9

    .line 17
    new-instance v10, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 22
    sget-object v11, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;->APPEND:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;

    .line 24
    const-string v12, "*mangle"

    .line 26
    const-string v8, ";"

    .line 28
    const-string v7, " prio 10"

    .line 30
    const-string v6, " table "

    .line 32
    const-string v5, " from all fwmark "

    .line 34
    const-string v4, ";ip -6 rule add "

    .line 36
    const-string v3, " local default dev lo table "

    .line 38
    const-string/jumbo v13, "ip -6 route add "

    .line 41
    const-string v14, "TPROXY --on-port "

    .line 43
    const-string v15, " -p udp -i lo -m mark --mark "

    .line 45
    move-object/from16 v16, v13

    .line 47
    const-string v13, " -p udp -m connmark --mark "

    .line 49
    move-object/from16 v17, v3

    .line 51
    const-string v3, "CONNMARK --set-mark "

    .line 53
    if-nez v0, :cond_3

    .line 55
    sget-boolean v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->IS_CONNBYTE_EXTENSION_PRESENT:Z

    .line 57
    move-object/from16 v18, v12

    .line 59
    const/16 v12, 0x3e

    .line 61
    if-eqz v0, :cond_1

    .line 63
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 71
    move-object/from16 v19, v4

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    .line 75
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-static {v4, v12}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 81
    move-result-object v20

    .line 82
    const-string v21, " -m owner --uid-owner 10000-19999 ! -o lo -p udp -m state --state NEW -m connbytes --connbytes 1:1 --connbytes-dir original --connbytes-mode packets "

    .line 84
    const-string v22, ""

    .line 86
    move-object/from16 v4, v17

    .line 88
    move-object v3, v0

    .line 89
    move-object/from16 v24, v4

    .line 91
    move-object/from16 v23, v19

    .line 93
    move-object v4, v2

    .line 94
    move-object/from16 v25, v5

    .line 96
    move-object/from16 v5, v21

    .line 98
    move-object/from16 v26, v6

    .line 100
    move-object/from16 v6, v20

    .line 102
    move-object/from16 v27, v7

    .line 104
    move-object/from16 v7, v22

    .line 106
    move-object/from16 v28, v8

    .line 108
    move-object v8, v11

    .line 109
    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 112
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    goto/16 :goto_0

    .line 117
    :cond_0
    move-object/from16 v23, v4

    .line 119
    move-object/from16 v25, v5

    .line 121
    move-object/from16 v26, v6

    .line 123
    move-object/from16 v27, v7

    .line 125
    move-object/from16 v28, v8

    .line 127
    move-object/from16 v24, v17

    .line 129
    new-instance v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 131
    new-instance v4, Ljava/lang/StringBuilder;

    .line 133
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-static {v4, v12}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 139
    move-result-object v6

    .line 140
    const-string v5, " -m owner --uid-owner 10000-19999 ! -o lo -p udp -m state --state NEW -m connbytes --connbytes 1:1 --connbytes-dir original --connbytes-mode packets "

    .line 142
    const-string v7, ""

    .line 144
    move-object v3, v0

    .line 145
    move-object v4, v2

    .line 146
    move-object v8, v11

    .line 147
    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 150
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    goto :goto_0

    .line 154
    :cond_1
    move-object/from16 v23, v4

    .line 156
    move-object/from16 v25, v5

    .line 158
    move-object/from16 v26, v6

    .line 160
    move-object/from16 v27, v7

    .line 162
    move-object/from16 v28, v8

    .line 164
    move-object/from16 v24, v17

    .line 166
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    .line 169
    move-result v0

    .line 170
    if-nez v0, :cond_2

    .line 172
    new-instance v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    .line 176
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-static {v4, v12}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 182
    move-result-object v6

    .line 183
    const-string v5, " -m owner --uid-owner 10000-19999 ! -o lo -p udp -m state --state NEW "

    .line 185
    const-string v7, ""

    .line 187
    move-object v3, v0

    .line 188
    move-object v4, v2

    .line 189
    move-object v8, v11

    .line 190
    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 193
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    goto :goto_0

    .line 197
    :cond_2
    new-instance v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 199
    new-instance v4, Ljava/lang/StringBuilder;

    .line 201
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-static {v4, v12}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 207
    move-result-object v6

    .line 208
    const-string v5, " -m owner --uid-owner 10000-19999 ! -o lo -p udp -m state --state NEW "

    .line 210
    const-string v7, ""

    .line 212
    move-object v3, v0

    .line 213
    move-object v4, v2

    .line 214
    move-object v8, v11

    .line 215
    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 218
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    :goto_0
    new-instance v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    .line 225
    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-static {v3, v12}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 231
    move-result-object v5

    .line 232
    const-string v6, "CONNMARK --restore-mark"

    .line 234
    const-string v7, ""

    .line 236
    move-object v3, v0

    .line 237
    move-object v4, v2

    .line 238
    move-object v8, v11

    .line 239
    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 242
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    new-instance v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    .line 249
    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-static {v3, v12}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 255
    move-result-object v5

    .line 256
    const-string v6, "ACCEPT"

    .line 258
    const-string v7, ""

    .line 260
    move-object v3, v0

    .line 261
    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 264
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    new-instance v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    .line 271
    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-static {v2, v12}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 277
    move-result-object v6

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    .line 280
    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    invoke-static {v2, v1}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 286
    move-result-object v7

    .line 287
    const-string v8, ""

    .line 289
    move-object v4, v0

    .line 290
    move-object v5, v9

    .line 291
    move-object v9, v11

    .line 292
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 295
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    move-object/from16 v8, v18

    .line 300
    const/4 v0, 0x6

    .line 301
    const/4 v1, 0x0

    .line 302
    const/4 v2, 0x1

    .line 303
    invoke-static {v0, v8, v1, v10, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    .line 308
    move-object/from16 v7, v16

    .line 310
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    .line 315
    move-object/from16 v6, v24

    .line 317
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 323
    move-result-object v2

    .line 324
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    move-result-object v1

    .line 331
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    move-object/from16 v5, v23

    .line 336
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    .line 341
    move-object/from16 v4, v25

    .line 343
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 349
    move-result-object v2

    .line 350
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    move-object/from16 v2, v26

    .line 355
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 361
    move-result-object v2

    .line 362
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    move-object/from16 v12, v27

    .line 367
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    move-result-object v1

    .line 374
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    move-object/from16 v1, v28

    .line 379
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    move-result-object v0

    .line 386
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->runSingleCommand(Ljava/lang/String;)V

    .line 389
    goto/16 :goto_3

    .line 391
    :cond_3
    move-object/from16 v27, v7

    .line 393
    move-object/from16 v29, v8

    .line 395
    move-object v8, v12

    .line 396
    move-object/from16 v7, v16

    .line 398
    move-object v12, v6

    .line 399
    move-object/from16 v6, v17

    .line 401
    move-object/from16 v33, v5

    .line 403
    move-object v5, v4

    .line 404
    move-object/from16 v4, v33

    .line 406
    const v16, 0x186a0

    .line 409
    mul-int v0, v0, v16

    .line 411
    move-object/from16 v25, v4

    .line 413
    add-int/lit8 v4, v0, 0x1

    .line 415
    const v16, 0x1869f

    .line 418
    add-int v0, v0, v16

    .line 420
    move-object/from16 v23, v5

    .line 422
    new-instance v5, Ljava/lang/StringBuilder;

    .line 424
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 427
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 430
    const-string v4, "-"

    .line 432
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 441
    move-result-object v0

    .line 442
    sget-boolean v4, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->IS_CONNBYTE_EXTENSION_PRESENT:Z

    .line 444
    const-string v5, " -m owner --uid-owner "

    .line 446
    move-object/from16 v26, v12

    .line 448
    if-eqz v4, :cond_5

    .line 450
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    .line 453
    move-result v4

    .line 454
    const-string v12, " ! -o lo -p udp -m state --state NEW -m connbytes --connbytes 1:1 --connbytes-dir original --connbytes-mode packets "

    .line 456
    if-nez v4, :cond_4

    .line 458
    new-instance v4, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 460
    invoke-static {v5, v0, v12}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 463
    move-result-object v5

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    .line 466
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 469
    const/16 v3, 0x3f

    .line 471
    invoke-static {v0, v3}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 474
    move-result-object v0

    .line 475
    const-string v12, ""

    .line 477
    move-object v3, v4

    .line 478
    move-object/from16 v16, v9

    .line 480
    move-object/from16 v30, v25

    .line 482
    move-object v9, v4

    .line 483
    move-object v4, v2

    .line 484
    move-object/from16 v31, v23

    .line 486
    move-object/from16 v32, v6

    .line 488
    move-object v6, v0

    .line 489
    move-object v0, v7

    .line 490
    move-object v7, v12

    .line 491
    move-object v12, v8

    .line 492
    move-object v8, v11

    .line 493
    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 496
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    move-object v9, v12

    .line 500
    :goto_1
    move-object v12, v0

    .line 501
    goto/16 :goto_2

    .line 503
    :cond_4
    move-object/from16 v32, v6

    .line 505
    move-object/from16 v16, v9

    .line 507
    move-object/from16 v31, v23

    .line 509
    move-object/from16 v30, v25

    .line 511
    move-object v9, v8

    .line 512
    move-object v8, v7

    .line 513
    new-instance v7, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 515
    invoke-static {v5, v0, v12}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 518
    move-result-object v5

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    .line 521
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 524
    const/16 v3, 0x3f

    .line 526
    invoke-static {v0, v3}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 529
    move-result-object v6

    .line 530
    const-string v0, ""

    .line 532
    move-object v3, v7

    .line 533
    move-object v4, v2

    .line 534
    move-object v12, v7

    .line 535
    move-object v7, v0

    .line 536
    move-object v0, v8

    .line 537
    move-object v8, v11

    .line 538
    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 541
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    goto :goto_1

    .line 545
    :cond_5
    move-object/from16 v32, v6

    .line 547
    move-object v12, v7

    .line 548
    move-object/from16 v16, v9

    .line 550
    move-object/from16 v31, v23

    .line 552
    move-object/from16 v30, v25

    .line 554
    move-object v9, v8

    .line 555
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    .line 558
    move-result v4

    .line 559
    const-string v6, " ! -o lo -p udp -m state --state NEW "

    .line 561
    if-nez v4, :cond_6

    .line 563
    new-instance v8, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 565
    invoke-static {v5, v0, v6}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 568
    move-result-object v5

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    .line 571
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 574
    const/16 v3, 0x3f

    .line 576
    invoke-static {v0, v3}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 579
    move-result-object v6

    .line 580
    const-string v7, ""

    .line 582
    move-object v3, v8

    .line 583
    move-object v4, v2

    .line 584
    move-object v0, v8

    .line 585
    move-object v8, v11

    .line 586
    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 589
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    goto :goto_2

    .line 593
    :cond_6
    new-instance v8, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 595
    invoke-static {v5, v0, v6}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 598
    move-result-object v5

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    .line 601
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 604
    const/16 v3, 0x3f

    .line 606
    invoke-static {v0, v3}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 609
    move-result-object v6

    .line 610
    const-string v7, ""

    .line 612
    move-object v3, v8

    .line 613
    move-object v4, v2

    .line 614
    move-object v0, v8

    .line 615
    move-object v8, v11

    .line 616
    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 619
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    :goto_2
    new-instance v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 624
    new-instance v3, Ljava/lang/StringBuilder;

    .line 626
    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 629
    const/16 v4, 0x3f

    .line 631
    invoke-static {v3, v4}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 634
    move-result-object v5

    .line 635
    const-string v6, "CONNMARK --restore-mark"

    .line 637
    const-string v7, ""

    .line 639
    move-object v3, v0

    .line 640
    move-object v4, v2

    .line 641
    move-object v8, v11

    .line 642
    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 645
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    new-instance v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 650
    new-instance v3, Ljava/lang/StringBuilder;

    .line 652
    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 655
    const/16 v4, 0x3f

    .line 657
    invoke-static {v3, v4}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 660
    move-result-object v5

    .line 661
    const-string v6, "ACCEPT"

    .line 663
    const-string v7, ""

    .line 665
    move-object v3, v0

    .line 666
    move-object v4, v2

    .line 667
    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 670
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    new-instance v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 675
    new-instance v2, Ljava/lang/StringBuilder;

    .line 677
    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 680
    const/16 v3, 0x3f

    .line 682
    invoke-static {v2, v3}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 685
    move-result-object v6

    .line 686
    new-instance v2, Ljava/lang/StringBuilder;

    .line 688
    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 691
    invoke-static {v2, v1}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 694
    move-result-object v7

    .line 695
    const-string v8, ""

    .line 697
    move-object v4, v0

    .line 698
    move-object/from16 v5, v16

    .line 700
    move-object v1, v9

    .line 701
    move-object v9, v11

    .line 702
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 705
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    const/4 v0, 0x6

    .line 709
    const/4 v2, 0x0

    .line 710
    const/4 v3, 0x1

    .line 711
    invoke-static {v0, v1, v2, v10, v3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    .line 716
    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 719
    new-instance v1, Ljava/lang/StringBuilder;

    .line 721
    move-object/from16 v2, v32

    .line 723
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 726
    const/16 v2, 0x3f

    .line 728
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 731
    move-result-object v3

    .line 732
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 738
    move-result-object v1

    .line 739
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    move-object/from16 v1, v31

    .line 744
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    new-instance v1, Ljava/lang/StringBuilder;

    .line 749
    move-object/from16 v3, v30

    .line 751
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 754
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 757
    move-result-object v3

    .line 758
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    move-object/from16 v3, v26

    .line 763
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 769
    move-result-object v2

    .line 770
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    move-object/from16 v2, v27

    .line 775
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 781
    move-result-object v1

    .line 782
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    move-object/from16 v1, v29

    .line 787
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 793
    move-result-object v0

    .line 794
    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->runSingleCommand(Ljava/lang/String;)V

    .line 797
    :goto_3
    return-void
.end method

.method public static redirectDnsQuery(II)V
    .locals 7

    .line 1
    const-string v0, "_knox_nwfilter_dns_rdt"

    .line 3
    invoke-static {p0, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v2

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    sget-object v6, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;->INSERT:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;

    .line 14
    const-string v1, "REDIRECT --to-port "

    .line 16
    if-nez p0, :cond_0

    .line 18
    new-instance p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-static {v3, p1}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 28
    move-result-object v4

    .line 29
    const-string v3, " -o lo -p udp --dport 53 -d 127.0.0.1"

    .line 31
    const-string v5, ""

    .line 33
    move-object v1, p0

    .line 34
    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 37
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-static {v3, p1}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 51
    move-result-object v4

    .line 52
    const-string v3, " -o lo -p udp --dport 53 -d 127.0.0.2"

    .line 54
    const-string v5, ""

    .line 56
    move-object v1, p0

    .line 57
    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 60
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    :goto_0
    const/4 p0, 0x1

    .line 64
    const-string p1, "*nat"

    .line 66
    const/4 v1, 0x0

    .line 67
    const/4 v2, 0x4

    .line 68
    invoke-static {v2, p1, v1, v0, p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 71
    return-void
.end method

.method public static removeChainsCmd(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    check-cast p1, Ljava/util/HashMap;

    .line 8
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/util/Map$Entry;

    .line 28
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/util/Collection;

    .line 34
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {p0, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->createTableHeaderCmd(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object v0

    .line 50
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_2

    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Ljava/util/Map$Entry;

    .line 62
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Ljava/util/List;

    .line 68
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 71
    move-result-object v2

    .line 72
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_1

    .line 78
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    move-result-object v3

    .line 82
    move-object v7, v3

    .line 83
    check-cast v7, Ljava/lang/String;

    .line 85
    new-instance v3, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 87
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 90
    move-result-object v4

    .line 91
    move-object v5, v4

    .line 92
    check-cast v5, Ljava/lang/String;

    .line 94
    sget-object v9, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;->DELETE:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;

    .line 96
    const-string v6, ""

    .line 98
    const-string v8, ""

    .line 100
    move-object v4, v3

    .line 101
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 104
    invoke-static {v3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->parseIptablesRestoreCmd(Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;)Ljava/lang/String;

    .line 107
    move-result-object v3

    .line 108
    move-object v4, p0

    .line 109
    check-cast v4, Ljava/util/ArrayList;

    .line 111
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    goto :goto_1

    .line 115
    :cond_2
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 118
    move-result-object p1

    .line 119
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 122
    move-result-object p1

    .line 123
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_4

    .line 129
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Ljava/util/Map$Entry;

    .line 135
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Ljava/util/List;

    .line 141
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 144
    move-result-object v0

    .line 145
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    move-result v1

    .line 149
    if-eqz v1, :cond_3

    .line 151
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    move-result-object v1

    .line 155
    move-object v3, v1

    .line 156
    check-cast v3, Ljava/lang/String;

    .line 158
    new-instance v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 160
    sget-object v7, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;->REMOVE_CHAIN:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;

    .line 162
    const/4 v5, 0x0

    .line 163
    const/4 v6, 0x0

    .line 164
    const/4 v4, 0x0

    .line 165
    move-object v2, v1

    .line 166
    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 169
    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->parseIptablesRestoreCmd(Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;)Ljava/lang/String;

    .line 172
    move-result-object v1

    .line 173
    move-object v2, p0

    .line 174
    check-cast v2, Ljava/util/ArrayList;

    .line 176
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    goto :goto_2

    .line 180
    :cond_4
    const-string p1, "COMMIT\n"

    .line 182
    move-object v0, p0

    .line 183
    check-cast v0, Ljava/util/ArrayList;

    .line 185
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    return-object p0
.end method

.method public static removeIpTableChains(I)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->createFilterMap(I)Ljava/util/Map;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "*filter"

    .line 7
    invoke-static {v1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->removeChainsCmd(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    const/16 v1, 0x2e

    .line 13
    invoke-static {v1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->runIptablesRestoreCmd(ILjava/util/List;)V

    .line 16
    invoke-static {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->createNatMap(I)Ljava/util/Map;

    .line 19
    move-result-object v0

    .line 20
    const-string v1, "*nat"

    .line 22
    invoke-static {v1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->removeChainsCmd(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x4

    .line 27
    invoke-static {v1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->runIptablesRestoreCmd(ILjava/util/List;)V

    .line 30
    invoke-static {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->createMangleMapList(I)Ljava/util/Map;

    .line 33
    move-result-object p0

    .line 34
    const-string v0, "*mangle"

    .line 36
    invoke-static {v0, p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->removeChainsCmd(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    .line 39
    move-result-object p0

    .line 40
    const/4 v0, 0x6

    .line 41
    invoke-static {v0, p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->runIptablesRestoreCmd(ILjava/util/List;)V

    .line 44
    return-void
.end method

.method public static removeTcpRedirectRulesForCaptivePortal(II)V
    .locals 8

    .line 1
    if-gtz p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, "_knox_nwfilter_cp_rdt"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v3

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    new-instance v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    .line 32
    const-string v2, " -m owner --uid-owner "

    .line 34
    const-string v4, " -o lo -p tcp --dport 80 "

    .line 36
    invoke-static {p0, v2, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v4

    .line 40
    new-instance p0, Ljava/lang/StringBuilder;

    .line 42
    const-string v2, "REDIRECT --to-port "

    .line 44
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-static {p0, p1}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 50
    move-result-object v5

    .line 51
    sget-object v7, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;->DELETE:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;

    .line 53
    const-string v6, ""

    .line 55
    move-object v2, v1

    .line 56
    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    .line 59
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    const/4 p0, 0x1

    .line 63
    const-string p1, "*nat"

    .line 65
    const/4 v1, 0x0

    .line 66
    const/4 v2, 0x4

    .line 67
    invoke-static {v2, p1, v1, v0, p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 70
    return-void
.end method

.method public static runIptablesRestoreCmd(ILjava/util/List;)V
    .locals 6

    .line 1
    const-string v0, ""

    .line 3
    invoke-static {v0, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterFirewall"

    .line 10
    const-string v1, "Failed to run cmd: "

    .line 12
    const-string/jumbo v2, "testing: command "

    .line 15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 18
    move-result-wide v3

    .line 19
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string/jumbo v2, "target "

    .line 30
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const-string/jumbo v2, "network_management"

    .line 46
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 49
    move-result-object v2

    .line 50
    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    .line 53
    move-result-object v2

    .line 54
    invoke-interface {v2, p0, p1}, Landroid/os/INetworkManagementService;->runKnoxFirewallRulesCommand(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 60
    goto :goto_1

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_2

    .line 63
    :catch_0
    move-exception p0

    .line 64
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 66
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p0

    .line 80
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    goto :goto_0

    .line 84
    :goto_1
    return-void

    .line 85
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 88
    throw p0
.end method

.method public static runSingleCommand(Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterFirewall"

    .line 4
    const-string v1, "Error splitting commands "

    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    move-result-wide v2

    .line 10
    :try_start_0
    sget-object v4, Lcom/android/server/enterprise/utils/NetdHelper;->allowedCommands:Ljava/util/Map;

    .line 12
    if-eqz p0, :cond_0

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 17
    move-result v4

    .line 18
    if-nez v4, :cond_0

    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    sget-object v4, Lcom/android/server/enterprise/utils/NetdHelper;->CMD_DELIMITER:Ljava/lang/String;

    .line 26
    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    :goto_0
    if-nez p0, :cond_1

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_5

    .line 55
    :catch_0
    move-exception p0

    .line 56
    goto :goto_3

    .line 57
    :cond_1
    :try_start_1
    array-length v1, p0

    .line 58
    const/4 v4, 0x0

    .line 59
    :goto_1
    if-ge v4, v1, :cond_2

    .line 61
    aget-object v5, p0, v4

    .line 63
    const-string/jumbo v6, "network_management"

    .line 66
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 69
    move-result-object v6

    .line 70
    invoke-static {v6}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    .line 73
    move-result-object v6

    .line 74
    invoke-static {v5}, Lcom/android/server/enterprise/utils/NetdHelper;->getCmdNumber(Ljava/lang/String;)Ljava/lang/Integer;

    .line 77
    move-result-object v7

    .line 78
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 81
    move-result v7

    .line 82
    invoke-static {v5}, Lcom/android/server/enterprise/utils/NetdHelper;->getCmdParams(Ljava/lang/String;)[Ljava/lang/String;

    .line 85
    move-result-object v5

    .line 86
    invoke-interface {v6, v7, v5}, Landroid/os/INetworkManagementService;->runKnoxRulesCommand(I[Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    add-int/lit8 v4, v4, 0x1

    .line 91
    goto :goto_1

    .line 92
    :cond_2
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 95
    goto :goto_4

    .line 96
    :goto_3
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 98
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    const-string/jumbo v4, "runSingleCommand error "

    .line 104
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object p0

    .line 118
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    goto :goto_2

    .line 122
    :goto_4
    return-void

    .line 123
    :goto_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 126
    throw p0
.end method


# virtual methods
.method public final getOemNetdService()Lcom/android/internal/net/IOemNetd;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->mNetdService:Landroid/net/INetd;

    .line 8
    const-string/jumbo v1, "knoxNwFilter-KnoxNetworkFilterFirewall"

    .line 11
    if-nez v0, :cond_2

    .line 13
    :try_start_0
    const-string/jumbo v0, "netd"

    .line 16
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->mNetdService:Landroid/net/INetd;

    .line 26
    if-nez v0, :cond_1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-interface {v0}, Landroid/net/INetd;->isAlive()Z

    .line 32
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->mNetdService:Landroid/net/INetd;

    .line 37
    const/4 v0, 0x0

    .line 38
    :goto_0
    if-nez v0, :cond_2

    .line 40
    const-string v0, "Can\'t connect to NativeNetdService netd"

    .line 42
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->mNetdService:Landroid/net/INetd;

    .line 47
    if-eqz v0, :cond_3

    .line 49
    :try_start_1
    invoke-interface {v0}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Lcom/android/internal/net/IOemNetd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetd;

    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->mOemNetdService:Lcom/android/internal/net/IOemNetd;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 59
    goto :goto_2

    .line 60
    :catch_1
    move-exception v0

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    .line 63
    const-string v3, "Failed to get OemNetd listener "

    .line 65
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-static {v0, v2, v1}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 71
    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    .line 73
    return-object p0
.end method
